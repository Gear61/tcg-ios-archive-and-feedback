//
//  LessonGalleryCardView.swift
//  TCG
//
//  Created by Alexander Chiou on 3/7/22.
//

import SwiftUI
import SDWebImageSwiftUI

struct LessonGalleryCardView: View {
    
    @ObservedObject var lesson: Lesson
    
    func checkCompletion() {
        if (!lesson.isCompleted) {
            if (UserDefaults.standard.bool(forKey: lesson.id)) {
                lesson.isCompleted = true
            }
        }
    }
    
    var body: some View {
        NavigationLink(destination: LearningView(viewModel: LearningViewModel(lesson: self.lesson))) {
            VStack(spacing: 0) {
                ZStack(alignment: .top) {
                    WebImage(url: URL(string: (lesson.getYouTubeThumbnailUrl())))
                        .resizable()
                        .indicator(.activity)
                        .transition(.fade(duration: 0.5))
                        .scaledToFit()
                        .frame(width: 256, height: 144)
                    HStack {
                        Spacer()
                        Image(systemName: lesson.isCompleted ? "checkmark" : "xmark")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20, height: 20)
                            .foregroundColor(lesson.isCompleted ? Color.green : Color.red)
                            .padding(8)
                            .background(RoundedRectangle(cornerRadius: 4).fill(Colors.white80Alpha))
                            .onAppear(perform: checkCompletion)
                    }
                    .padding(8)
                }
                Divider()
                Text(lesson.name)
                    .foregroundColor(Colors.normalText)
                    .font(.system(size: 15))
                    .padding(8)
                    .frame(width: 256, height: 56, alignment: .leading)
                    .lineLimit(2)
                    .truncationMode(.tail)
                    .multilineTextAlignment(.leading)
            }
            .cornerRadius(4, corners: [.topLeft, .bottomLeft, .topRight, .bottomRight])
            .overlay(
                RoundedRectangle(cornerRadius: 4)
                    .stroke(Colors.footerText, lineWidth: 1)
            )
        }
    }
}
