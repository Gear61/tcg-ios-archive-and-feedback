//
//  LessonRowView.swift
//  TCG
//
//  Created by Alexander Chiou on 1/12/22.
//

import SwiftUI

struct LessonRowView: View {
    
    @ObservedObject var lesson: Lesson
    
    var body: some View {
        HStack {
            Text(lesson.name)
                .foregroundColor(Colors.normalText)
            Spacer()
            Image(systemName: lesson.isCompleted ? "checkmark" : "xmark")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 22, height: 22)
                .foregroundColor(lesson.isCompleted ? Color.green : Color.red)
        }
        .padding(.horizontal)
        .padding(.top, 4)
    }
}
