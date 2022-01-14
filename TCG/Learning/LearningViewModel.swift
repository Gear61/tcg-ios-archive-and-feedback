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
    
    @Published var state: LearningState = LearningState.WatchingContent
    @Published var currentQuestion: Question
    var quizAnswers: [String]
    
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
            // Evaluate the score and generate some sort of result object
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
