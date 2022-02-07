//
//  LessonListView.swift
//  TCG
//
//  Created by Alexander Chiou on 2/7/22.
//

import SwiftUI

struct LessonListView: View {

    @EnvironmentObject var interviewLessons: InterviewContentProvider
    @EnvironmentObject var resumeLessons: ResumeContentProvider
    @EnvironmentObject var productivityLessons: ProductivityContentProvider
    @EnvironmentObject var promotionLessons: PromotionContentProvider
    
    var lessonType: LessonType
    
    private func getLessons() -> [Lesson] {
        switch lessonType {
        case .INTERVIEWING:
            return interviewLessons.lessons
        case .RESUME:
            return resumeLessons.lessons
        case .PRODUCTIVITY:
            return productivityLessons.lessons
        case .PROMOTION:
            return promotionLessons.lessons
        }
    }
    
    var body: some View {
        LazyVStack() {
            ForEach(getLessons()) { lesson in
                LessonRowView(lesson: lesson).id(UUID())
                Divider()
            }
        }
    }
}
