//
//  ScoreReportView.swift
//  TCG
//
//  Created by Alexander Chiou on 1/12/22.
//

import SwiftUI

struct ScoreReportView: View {
    
    var viewModel: LearningViewModel
    
    var body: some View {
        VStack {
            Text(viewModel.scoreMessage)
                .foregroundColor(Colors.normalText)
                .font(.title3)
                .padding(.bottom, 8)
            Text(viewModel.scoreText)
                .foregroundColor(Colors.titleText)
                .font(.title)
            Spacer()
        }
        .padding()
    }
}
