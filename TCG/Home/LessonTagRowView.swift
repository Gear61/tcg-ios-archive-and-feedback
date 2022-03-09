//
//  LessonTagRowView.swift
//  TCG
//
//  Created by Alexander Chiou on 3/8/22.
//

import SwiftUI

struct LessonTagRowView: View {
    
    @ObservedObject var viewModel: LessonTagViewModel
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(viewModel.tag.description)
                    .foregroundColor(Colors.titleText)
                    .font(.title2)
                Text(viewModel.getNumLessonsText())
                    .foregroundColor(Colors.normalText)
                    .font(.body)
            }
            Spacer()
            Text("100%")
        }
        .padding(16)
        .overlay(
            RoundedRectangle(cornerRadius: 4)
                .stroke(Colors.footerText, lineWidth: 1)
        )
    }
}
