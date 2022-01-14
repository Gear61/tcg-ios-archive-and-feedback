//
//  LessonRowView.swift
//  TCG
//
//  Created by Alexander Chiou on 1/12/22.
//

import SwiftUI

struct LessonRowView: View {
    
    @ObservedObject var lesson: Lesson
    
    func checkCompletion() {
        if (!lesson.isCompleted) {
            if (UserDefaults.standard.bool(forKey: lesson.id)) {
                lesson.isCompleted = true
            }
        }
    }
    
    var body: some View {
        NavigationLink(destination: LearningView(viewModel: LearningViewModel(lesson: self.lesson), lessonType: lesson.type)) {
            HStack() {
                Text(lesson.name)
                    .foregroundColor(Colors.normalText)
                    .multilineTextAlignment(.leading)
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
        .onAppear(perform: checkCompletion)
    }
}
