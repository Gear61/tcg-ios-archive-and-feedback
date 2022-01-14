//
//  LearningViewModel.swift
//  TCG
//
//  Created by Alexander Chiou on 1/12/22.
//

import Foundation

enum LearningState {
    case WatchingContent
    case TakingQuiz
    case ReportingScore
}

class LearningViewModel: ObservableObject {

    var lesson: Lesson
    var quizAnswers: [String]
    var scoreMessage: String = ""
    var scoreText: String = ""
    
    @Published var state: LearningState = LearningState.WatchingContent
    @Published var currentQuestion: Question
    
    init(lesson: Lesson) {
        self.lesson = lesson
        self.currentQuestion = lesson.questions[0]
        self.quizAnswers = [String]()
    }
    
    func onContentFinished() {
        state = LearningState.TakingQuiz
    }
    
    func onAnswerSubmitted(answer: String) {
        quizAnswers.append(answer)
        if (quizAnswers.count == lesson.questions.count) {
            // Evaluate the score and generate necessary fields for score report
            var numRight: Float = 0.0
            for (index, element) in quizAnswers.enumerated() {
                if (lesson.questions[index].correctAnswer == element) {
                    numRight += 1
                }
            }
            let percent: Float = (numRight / Float(quizAnswers.count)) * 100.0
            let percentText = String(format: "%.2f%", percent)
            scoreText = String(numRight) + "/" + String(quizAnswers.count) + " for " + percentText
            
            var prefix = ""
            if (percent == 100.0) {
                lesson.isCompleted = true
                UserDefaults.standard.set(true, forKey: lesson.id)
                prefix = "Congratulations!"
            } else if (percent >= 80.0) {
                prefix = "Not bad!"
            } else {
                prefix = "Better luck next time!"
            }
            scoreMessage = prefix + " Your score was:"
            
            state = LearningState.ReportingScore
        } else {
            currentQuestion = lesson.questions[quizAnswers.count]
        }
    }
    
    func reset() {
        state = LearningState.WatchingContent
        currentQuestion = lesson.questions[0]
        quizAnswers.removeAll()
    }
}
