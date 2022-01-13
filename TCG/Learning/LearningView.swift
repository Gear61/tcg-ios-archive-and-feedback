//
//  LessonView.swift
//  TCG
//
//  Created by Alexander Chiou on 1/12/22.
//

import SwiftUI

struct LearningView: View {
    
    @ObservedObject var viewModel: LearningViewModel
    
    var body: some View {
        VStack {
            switch viewModel.state {
            case LearningState.WatchingContent:
                WatchingContentView(lesson: viewModel.lesson)
            case LearningState.TakingQuiz:
                QuizView()
            case LearningState.ReportingScore:
                ScoreReportView()
            }
        }
        .toolbar {
            ToolbarItem(placement: .principal) {
                HStack {
                    Text("Lesson Page").font(.headline)
                }
            }
        }
    }
}
