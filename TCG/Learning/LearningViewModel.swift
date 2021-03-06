//
//  LearningViewModel.swift
//  TCG
//
//  Created by Alexander Chiou on 1/12/22.
//

import Foundation
import SwiftUI

enum LearningState {
    case WatchingContent
    case TakingQuiz
    case ReportingScore
}

protocol LearningDelegate {
    
    func onContentFinished()
    
    func onQuizFinished()
    
    func retakeQuiz()
    
    func relearnContent()
}

class LearningViewModel: ObservableObject {
    
    var lesson: Lesson
    var quizAnswers: [String]
    var scoreEmoji: String = "🥳"
    var scoreMessage: String = ""
    var scoreText: String = ""
    var gotPerfectScore = false
    var delegate: LearningDelegate? = nil
    
    @Published var state: LearningState = LearningState.WatchingContent
    @Published var currentQuestionIndex: Int
    
    // From 0.0 to 1.0
    @Published var currentQuizProgress: CGFloat = 0
    
    init(lesson: Lesson) {
        self.lesson = lesson
        self.currentQuestionIndex = 0
        self.quizAnswers = [String]()
    }
    
    func onContentFinished() {
        delegate?.onContentFinished()
    }
    
    func setInitialQuizProgress() {
        currentQuizProgress = (CGFloat(currentQuestionIndex + 1) / CGFloat(lesson.questions.count))
    }
    
    func onAnswerSubmitted(answer: String) {
        quizAnswers.append(answer)
        if (quizAnswers.count == lesson.questions.count) {
            delegate?.onQuizFinished()
        } else {
            currentQuestionIndex = quizAnswers.count
            currentQuizProgress = (CGFloat(currentQuestionIndex + 1) / CGFloat(lesson.questions.count))
        }
    }
    
    func getCurrentQuestionHeader() -> String {
        let currentQuestionNum = String(currentQuestionIndex + 1)
        let totalQuestionsNum = String(lesson.questions.count)
        return "Question " + currentQuestionNum + " of " + totalQuestionsNum
    }
    
    func getCurrentQuestion() -> Question {
        return lesson.questions[currentQuestionIndex]
    }
    
    func evaluateQuiz() {
        // Evaluate the score and generate necessary fields for score report
        var numRight = 0
        for (index, element) in quizAnswers.enumerated() {
            if (lesson.questions[index].correctAnswer == element) {
                numRight += 1
            }
        }
        let percent: Float = (Float(numRight) / Float(quizAnswers.count)) * 100.0
        let percentText = String(format: "%.2f", percent) + "%"
        scoreText = String(numRight) + "/" + String(quizAnswers.count) + " for " + percentText
        
        var prefix = ""
        gotPerfectScore = false
        if (percent == 100.0) {
            if (!lesson.isCompleted) {
                UserDefaultUtil.markLessonCompleted(lessonId: lesson.id)
            }
            gotPerfectScore = true
            scoreEmoji = "🥳"
            prefix = "Congratulations!"
        } else if (percent >= 80.0) {
            scoreEmoji = "🙂"
            prefix = "Not bad!"
        } else {
            scoreEmoji = "😢"
            prefix = "Better luck next time!"
        }
        scoreMessage = prefix + " Your score was:"
    }
    
    func retakeQuiz() {
        currentQuestionIndex = 0
        currentQuizProgress = 0
        quizAnswers.removeAll()
        delegate?.retakeQuiz()
    }
    
    func relearnContent() {
        currentQuestionIndex = 0
        currentQuizProgress = 0
        quizAnswers.removeAll()
        delegate?.relearnContent()
    }
    
    func reset() {
        state = LearningState.WatchingContent
        currentQuestionIndex = 0
        currentQuizProgress = 0
        quizAnswers.removeAll()
    }
}
