//
//  WatchingContentView.swift
//  TCG
//
//  Created by Alexander Chiou on 1/12/22.
//

import SwiftUI

struct WatchContentView: View {
    
    var viewModel: LearningViewModel
    @ObservedObject var youTubeViewModel: YouTubeWebViewModel
    
    func takeQuiz() {
        viewModel.onContentFinished()
    }
    
    func getVideoHeight() -> CGFloat {
        let screenWidth = UIScreen.main.bounds.size.width
        return (screenWidth - 32) * (9.0 / 16.0)
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(viewModel.lesson.name)
                .foregroundColor(Colors.titleText)
                .font(.title2)
                .padding(.top, 8)
                .padding(.bottom, 2)
            Text("To learn the contents of this lesson, watch the video below. After you are done, click the \"Quiz Me!\" button to see if you have truly mastered the content. Happy learning!")
                .foregroundColor(Colors.normalText)
                .font(.body)
            LoadingView(isShowing: self.$youTubeViewModel.isLoading) {
                YouTubeWebView(viewModel: self.youTubeViewModel)
            }
            .overlay(
                RoundedRectangle(cornerRadius: 4)
                    .stroke(Colors.normalText, lineWidth: 1)
            )
            .frame(minHeight: 0, maxHeight: getVideoHeight())
            .cornerRadius(4)
            Button(action: takeQuiz) {
                Text("Quiz Me!")
                    .foregroundColor(Color.white)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 4).fill(.green))
            }
            .padding(.top, 8)
            Spacer()
        }
        .padding(.leading, 16)
        .padding(.trailing, 16)
        .padding(.bottom, 16)
    }
}
