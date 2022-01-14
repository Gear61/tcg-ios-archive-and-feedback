//
//  QuizView.swift
//  TCG
//
//  Created by Alexander Chiou on 1/12/22.
//

import SwiftUI

struct QuizView: View {

    @ObservedObject var viewModel: LearningViewModel
    @State var selectedOption: String = ""
    
    func radioGroupCallback(id: String) {
        selectedOption = id
    }
    
    func submitAnswer() {
        withAnimation {
            viewModel.onAnswerSubmitted(answer: selectedOption)
        }
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(viewModel.currentQuestion.text)
                .font(.system(size: 21))
                .foregroundColor(Colors.normalText)
                .multilineTextAlignment(.leading)
            VStack {
                ForEach(viewModel.currentQuestion.options) { option in
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
        .padding()
    }
}
