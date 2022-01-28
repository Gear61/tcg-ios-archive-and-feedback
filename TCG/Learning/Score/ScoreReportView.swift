//
//  ScoreReportView.swift
//  TCG
//
//  Created by Alexander Chiou on 1/12/22.
//

import SwiftUI
import ConfettiSwiftUI

struct ScoreReportView: View {
    
    @Environment(\.presentationMode) var presentation
    @State var counter: Int = 0
    
    var viewModel: LearningViewModel
    
    func onAppear() {
        if (viewModel.gotPerfectScore) {
            counter = 1
        }
    }
    
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
                Text(viewModel.lesson.name)
                    .foregroundColor(Colors.titleText)
                    .font(.title2)
                Text(viewModel.scoreEmoji)
                    .font(.system(size: 69))
                    .padding(.top, 1)
                    .padding(.bottom, 8)
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
                ConfettiCannon(
                    counter: $counter,
                    num: 50,
                    colors: [.red, .orange, .purple, .yellow],
                    rainHeight: 1000,
                    openingAngle: Angle(degrees: 0),
                    closingAngle: Angle(degrees: 360),
                    radius: 400,
                    repetitions: 4,
                    repetitionInterval: 1
                )
            }
            .padding()
        }
        .onAppear(perform: onAppear)
    }
}
