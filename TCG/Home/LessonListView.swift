//
//  LessonListView.swift
//  TCG
//
//  Created by Alexander Chiou on 2/7/22.
//

import SwiftUI

struct LessonListView: View {
    
    var lessons: [Lesson]

    var body: some View {
        ScrollView {
            LazyVStack() {
                ForEach(lessons) { lesson in
                    LessonRowView(lesson: lesson).id(UUID())
                    Divider()
                }
            }
        }
    }
}
