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
    var quizAnswers: [String]
    
    init(lesson: Lesson) {
        self.lesson = lesson
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
        }
    }
    
    func reset() {
        state = LearningState.WatchingContent
        quizAnswers.removeAll()
    }
}
