//
//  LessonView.swift
//  TCG
//
//  Created by Alexander Chiou on 1/12/22.
//

import SwiftUI

struct LearningView: View {
    
    @ObservedObject var viewModel: LearningViewModel
    var lessonType: String
    
    func reset() {
        viewModel.reset()
    }
    
    var body: some View {
        VStack {
            switch viewModel.state {
            case LearningState.WatchingContent:
                WatchingContentView(
                    viewModel: self.viewModel,
                    youTubeViewModel: YouTubeWebViewModel(url: viewModel.lesson.getYouTubeUrl())
                )
            case LearningState.TakingQuiz:
                QuizView()
            case LearningState.ReportingScore:
                ScoreReportView()
            }
        }
        .toolbar {
            ToolbarItem(placement: .principal) {
                HStack {
                    Text(lessonType + " Lesson").font(.headline)
                }
            }
        }
        .onDisappear(perform: reset)
    }
}
