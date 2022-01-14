//
//  LessonView.swift
//  TCG
//
//  Created by Alexander Chiou on 1/12/22.
//

import SwiftUI

struct LearningView: View, LearningDelegate {
    
    @ObservedObject var viewModel: LearningViewModel
    var lessonType: String
    
    func reset() {
        viewModel.reset()
    }
    
    func attachListener() {
        viewModel.delegate = self
    }
    
    func onContentFinished() {
        withAnimation {
            viewModel.state = LearningState.TakingQuiz
        }
    }
    
    func onQuizFinished() {
        withAnimation {
            viewModel.evaluateQuiz()
            viewModel.state = LearningState.ReportingScore
        }
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
                QuizView(viewModel: self.viewModel)
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
        .onAppear(perform: attachListener)
        .onDisappear(perform: reset)
    }
}
