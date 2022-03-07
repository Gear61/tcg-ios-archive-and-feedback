//
//  LessonListView.swift
//  TCG
//
//  Created by Alexander Chiou on 2/7/22.
//

import SwiftUI

struct LessonListView: View {
    
    @EnvironmentObject var lessonProvider: LessonProvider
    
    var type: LessonType

    var body: some View {
        ScrollView {
            LazyVStack() {
                ForEach(lessonProvider.getLessons(type: type)) { lesson in
                    LessonRowView(lesson: lesson).id(UUID())
                    Divider()
                }
            }
        }
    }
}
