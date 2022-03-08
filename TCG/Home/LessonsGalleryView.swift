//
//  LessonsGalleryView.swift
//  TCG
//
//  Created by Alexander Chiou on 3/7/22.
//

import SwiftUI

struct LessonsGalleryView: View {
    
    @EnvironmentObject var lessonProvider: LessonProvider
    
    var lessonType: LessonType
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(lessonType.description)
                .foregroundColor(Colors.titleText)
                .font(.title2)
                .padding(.bottom, 2)
                .frame(maxWidth: .infinity, alignment: .leading)
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack {
                    ForEach(lessonProvider.getLessons(type: lessonType)) { lesson in
                        LessonGalleryCardView(lesson: lesson)
                    }
                }
            }
        }
        .padding()
    }
}
