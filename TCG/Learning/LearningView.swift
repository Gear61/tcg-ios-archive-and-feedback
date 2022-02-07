//
//  LessonView.swift
//  TCG
//
//  Created by Alexander Chiou on 1/12/22.
//

import SwiftUI

struct LearningView: View, LearningDelegate {
    
    @ObservedObject var viewModel: LearningViewModel
    
    func reset() {
        viewModel.delegate = nil
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
    
    func retakeQuiz() {
        withAnimation {
            viewModel.state = LearningState.TakingQuiz
        }
    }
    
    func relearnContent() {
        withAnimation {
            viewModel.state = LearningState.WatchingContent
        }
    }
    
    var body: some View {
        VStack {
            switch viewModel.state {
            case LearningState.WatchingContent:
                WatchContentView(
                    viewModel: self.viewModel,
                    youTubeViewModel: YouTubeWebViewModel(url: viewModel.lesson.getYouTubeUrl())
                ).supportedOrientations(.portrait)
            case LearningState.TakingQuiz:
                QuizView(viewModel: self.viewModel)
            case LearningState.ReportingScore:
                ScoreReportView(viewModel: self.viewModel)
            }
        }
        .toolbar {
            ToolbarItem(placement: .principal) {
                HStack {
                    Text(viewModel.lesson.getLessonToolbarTitleText()).font(.headline)
                }
            }
        }
        .onAppear(perform: attachListener)
        .onDisappear(perform: reset)
    }
}
