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
                .font(.system(size: 15))
                .padding(8)
                .frame(width: 256, height: 56, alignment: .leading)
                .lineLimit(2)
                .truncationMode(.tail)
        }
        .cornerRadius(4, corners: [.topLeft, .bottomLeft, .topRight, .bottomRight])
        .overlay(
            RoundedRectangle(cornerRadius: 4)
                .stroke(Colors.footerText, lineWidth: 1)
        )
    }
}
