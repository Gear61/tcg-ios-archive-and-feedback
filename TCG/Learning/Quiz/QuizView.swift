//
//  QuizView.swift
//  TCG
//
//  Created by Alexander Chiou on 1/12/22.
//

import SwiftUI
import AlertToast

struct QuizView: View {
    
    @ObservedObject var viewModel: LearningViewModel
    @ObservedObject private var toaster = Toaster()
    @State var selectedOption: String = ""
    @State var progress: CGFloat = 0.0
    
    func radioGroupCallback(id: String) {
        selectedOption = id
    }
    
    func onAppear() {
        viewModel.setInitialQuizProgress()
    }
    
    func submitAnswer() {
        progress += 0.2
        
        if (selectedOption.isEmpty) {
            toaster.showErrorToast(title: "You need to select an option.")
            return
        }
        
        withAnimation {
            viewModel.onAnswerSubmitted(answer: selectedOption)
            selectedOption = ""
        }
    }
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                HorizontalProgressBar(initialProgress: $viewModel.currentQuizProgress, color: .green)
                    .frame(height: 12)
                    .padding(.bottom, 4)
                Text(viewModel.getCurrentQuestionHeader())
                    .font(.title2)
                    .foregroundColor(Colors.titleText)
                    .multilineTextAlignment(.leading)
                    .fixedSize(horizontal: false, vertical: true)
                    .frame(maxHeight: .infinity)
                Text(viewModel.getCurrentQuestion().text)
                    .font(.system(size: 21))
                    .foregroundColor(Colors.normalText)
                    .multilineTextAlignment(.leading)
                    .fixedSize(horizontal: false, vertical: true)
                    .frame(maxHeight: .infinity)
                VStack {
                    ForEach(viewModel.getCurrentQuestion().options) { option in
                        RadioButtonField(
                            label: option.id,
                            isMarked: selectedOption == option.id,
                            callback: radioGroupCallback
                        )
                    }
                }
                Button(action: submitAnswer) {
                    Text("Submit")
                        .foregroundColor(Color.white)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 4).fill(Color.blue))
                }
                .padding(.top)
                Spacer()
            }
            .padding(16)
        }
        .toast(isPresenting: $toaster.show, duration: toaster.duration) {
            toaster.alertToast
        }
        .onAppear(perform: onAppear)
    }
}
