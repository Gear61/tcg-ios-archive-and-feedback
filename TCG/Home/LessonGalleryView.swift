//
//  LessonsGalleryView.swift
//  TCG
//
//  Created by Alexander Chiou on 3/7/22.
//

import SwiftUI

struct LessonGalleryView: View {
    
    @EnvironmentObject var lessonProvider: LessonProvider
    
    var lessonType: LessonTag
    
    var body: some View {
        VStack() {
            NavigationLink(destination: LessonListView(lessonType: lessonType)) {
                HStack {
                    Text(lessonType.description)
                        .foregroundColor(Colors.titleText)
                        .font(.system(size: 25, weight: .semibold, design: .default))
                    Spacer()
                    Image(systemName: "arrow.forward")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 20, height: 20)
                        .foregroundColor(Color.white)
                        .padding(8)
                        .background(Circle().fill(Color.green))
                }
                .padding(.leading, 16)
                .padding(.trailing, 16)
                .padding(.bottom, 2)
            }
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack(spacing: 0) {
                    ForEach(
                        Array(lessonProvider.getLessons(tag: lessonType).enumerated()),
                        id: \.element
                    ) { index, lesson in
                        LessonGalleryCardView(lesson: lesson)
                            .padding(.leading, index == 0 ? 16 : 0)
                            .padding(.trailing, 16)
                    }
                }
            }
        }
    }
}
