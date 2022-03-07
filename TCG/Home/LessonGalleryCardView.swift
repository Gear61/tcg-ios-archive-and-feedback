//
//  LessonGalleryCardView.swift
//  TCG
//
//  Created by Alexander Chiou on 3/7/22.
//

import SwiftUI
import SDWebImageSwiftUI

struct LessonGalleryCardView: View {
    
    var lesson: Lesson
    
    var body: some View {
        VStack(spacing: 0) {
            WebImage(url: URL(string: (lesson.getYouTubeThumbnailUrl())))
                .resizable()
                .indicator(.activity)
                .transition(.fade(duration: 0.5))
                .scaledToFit()
                .frame(width: 256, height: 144)
            Divider()
            Text(lesson.name)
                .foregroundColor(Colors.normalText)
                .font(.body)
                .padding()
                .frame(width: 256, height: 52)
                .multilineTextAlignment(.leading)
        }
        .overlay(
            RoundedRectangle(cornerRadius: 4)
                .stroke(Colors.footerText, lineWidth: 2)
        )
    }
}
