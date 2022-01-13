//
//  WatchingContentView.swift
//  TCG
//
//  Created by Alexander Chiou on 1/12/22.
//

import SwiftUI

struct WatchingContentView: View {
    
    var viewModel: LearningViewModel
    @ObservedObject var model = WebViewModel(url: "http://www.google.com")
    
    func takeQuiz() {
        viewModel.onContentFinished()
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(viewModel.lesson.name)
                .foregroundColor(Colors.titleText)
                .font(.title2)
                .padding(.bottom, 2)
            Text("To learn the contents of this lesson, watch the video below. After you are done, click the \"Quiz Me!\" button to see if you have truly mastered the content. Happy learning!")
                .foregroundColor(Colors.normalText)
                .font(.body)
            LoadingView(isShowing: self.$model.isLoading) {
                WebView(viewModel: self.model)
            }
            Button(action: takeQuiz) {
                Text("Quiz Me!")
                    .foregroundColor(Color.white)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 4).fill(Color.blue))
            }
            .padding(.top, 8)
            Spacer()
        }
        .padding()
    }
}
