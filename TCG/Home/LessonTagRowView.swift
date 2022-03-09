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
        NavigationLink(destination: LessonListView(lessonTag: viewModel.tag)) {
            HStack {
                VStack(alignment: .leading) {
                    Text(viewModel.tag.description)
                        .foregroundColor(Colors.titleText)
                        .font(.title3)
                    Text(viewModel.getNumLessonsText())
                        .foregroundColor(Colors.normalText)
                        .font(.body)
                }
                Spacer()
                Text(viewModel.completionPercentText)
                    .font(.system(size: 15))
                    .foregroundColor(Color(viewModel.getCompletionTextColor()))
                    .frame(width: 52, height: 52, alignment: .center)
                    .overlay(
                        Circle()
                            .stroke(Color(viewModel.getCompletionTextColor()), lineWidth: 2)
                    )
            }
            .padding(8)
            .overlay(
                RoundedRectangle(cornerRadius: 4)
                    .stroke(Colors.footerText, lineWidth: 1)
            )
        }
    }
}
