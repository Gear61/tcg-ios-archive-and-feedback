//
//  LessonFullCardView.swift
//  TCG
//
//  Created by Alexander Chiou on 3/7/22.
//

import SwiftUI
import SDWebImageSwiftUI

struct LessonFullCardView: View {

    @ObservedObject var lesson: Lesson
    
    func checkCompletion() {
        if (!lesson.isCompleted) {
            if (UserDefaults.standard.bool(forKey: lesson.id)) {
                lesson.isCompleted = true
            }
        }
    }
    
    func getThumbnailHeight() -> CGFloat {
        let screenWidth = UIScreen.main.bounds.size.width
        return (screenWidth - 32) * (9.0 / 16.0)
    }
    
    var body: some View {
        NavigationLink(destination: LearningView(viewModel: LearningViewModel(lesson: self.lesson))) {
            VStack(alignment: .leading, spacing: 0) {
                ZStack(alignment: .top) {
                    WebImage(url: URL(string: (lesson.getYouTubeThumbnailUrl())))
                        .resizable()
                        .indicator(.activity)
                        .transition(.fade(duration: 0.5))
                        .scaledToFit()
                        .frame(minHeight: 0, maxHeight: getThumbnailHeight())
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
                    .font(.system(size: 17))
                    .padding(8)
                    .frame(maxWidth: .infinity, alignment: .leading)
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
