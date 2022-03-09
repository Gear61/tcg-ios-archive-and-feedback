//
//  LessonListView.swift
//  TCG
//
//  Created by Alexander Chiou on 3/7/22.
//

import SwiftUI

struct LessonListView: View {
    
    @EnvironmentObject var lessonProvider: LessonProvider
    
    var lessonTag: LessonTag
    
    var body: some View {
        VStack(spacing: 0) {
            Divider()
            ScrollView(showsIndicators: false) {
                LazyVStack(spacing: 0) {
                    ForEach(
                        Array(lessonProvider.getLessons(tag: lessonTag).enumerated()),
                        id: \.element
                    ) { index, lesson in
                        LessonFullCardView(lesson: lesson)
                            .padding(.top, index == 0 ? 16 : 0)
                            .padding(.bottom, 16)
                    }
                }
            }
            .padding(.leading, 16)
            .padding(.trailing, 16)
        }
        .toolbar {
            ToolbarItem(placement: .principal) {
                HStack {
                    Text(lessonTag.description).font(.headline)
                }
            }
        }
    }
}
