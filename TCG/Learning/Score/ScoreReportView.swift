//
//  ScoreReportView.swift
//  TCG
//
//  Created by Alexander Chiou on 1/12/22.
//

import SwiftUI

struct ScoreReportView: View {
    
    @Environment(\.presentationMode) var presentation
    
    var viewModel: LearningViewModel
    
    func retakeQuiz() {
        viewModel.retakeQuiz()
    }
    
    func relearnContent() {
        viewModel.relearnContent()
    }
    
    func returnHome() {
        self.presentation.wrappedValue.dismiss()
    }
    
    var body: some View {
        ScrollView {
            VStack {
                Text(viewModel.scoreMessage)
                    .foregroundColor(Colors.normalText)
                    .font(.title3)
                    .padding(.bottom, 8)
                Text(viewModel.scoreText)
                    .foregroundColor(Colors.titleText)
                    .font(.title)
                if (!viewModel.gotPerfectScore) {
                    Button(action: retakeQuiz) {
                        Text("Retake Quiz")
                            .foregroundColor(Color.white)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(RoundedRectangle(cornerRadius: 4).fill(Color.blue))
                    }
                    .padding(.top, 8)
                    Button(action: relearnContent) {
                        Text("Relearn Content")
                            .foregroundColor(Color.white)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(RoundedRectangle(cornerRadius: 4).fill(Color.blue))
                    }
                    .padding(.top, 8)
                }
                Button(action: returnHome) {
                    Text("Exit")
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
}
