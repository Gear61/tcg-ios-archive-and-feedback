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
    @EnvironmentObject var learningQuicklyLessons: LearningQuicklyContentProvider
    @EnvironmentObject var meetingsLessons: MeetingsContentProvider
    
    var lessonType: LessonType
    
    private func getLessons() -> [Lesson] {
        var lessons: [Lesson] = []
        switch lessonType {
        case .INTERVIEWING:
            lessons = interviewLessons.lessons
        case .RESUME:
            lessons = resumeLessons.lessons
        case .PRODUCTIVITY:
            lessons = productivityLessons.lessons
        case .PROMOTION:
            lessons = promotionLessons.lessons
        case .LEARNING_QUICKLY:
            lessons = learningQuicklyLessons.lessons
        case .MEETINGS:
            lessons = meetingsLessons.lessons
        }
        verifyLessons(lessons: lessons)
        return lessons
    }
    
    private func verifyLessons(lessons: [Lesson]) {
        var seenYouTubeIds = Set<String>()
        for (index, lesson) in lessons.enumerated() {
            var lessonIdPrefix = ""
            switch lessonType {
            case .INTERVIEWING:
                lessonIdPrefix = "interviewing"
            case .RESUME:
                lessonIdPrefix = "resume"
            case .PRODUCTIVITY:
                lessonIdPrefix = "productivity"
            case .PROMOTION:
                lessonIdPrefix = "promotion"
            case .LEARNING_QUICKLY:
                lessonIdPrefix = "learning-quickly"
            case .MEETINGS:
                lessonIdPrefix = "meetings"
            }
            
            let lessonIdNumber = String(index + 1)
            let expectedLessonId = lessonIdPrefix + "-" + lessonIdNumber
            if (expectedLessonId != lesson.id) {
                fatalError("Expected " + expectedLessonId + " and got " + lesson.id)
            }
            if (seenYouTubeIds.contains(lesson.youtubeVideoId)) {
                fatalError("Duplicate YouTube video ID of " + lesson.youtubeVideoId + " || Lesson ID: " + lesson.id)
            }
            
            for question in lesson.questions {
                var hasCorrectAnswer = false
                for option in question.options {
                    if (option.id == question.correctAnswer) {
                        hasCorrectAnswer = true
                    }
                }
                if (!hasCorrectAnswer) {
                    fatalError("There is no correct answer for the question [" +  question.text + "] || Lesson ID: " + lesson.id)
                }
            }
            
            seenYouTubeIds.insert(lesson.youtubeVideoId)
        }
    }
    
    var body: some View {
        ScrollView {
            LazyVStack() {
                ForEach(getLessons()) { lesson in
                    LessonRowView(lesson: lesson).id(UUID())
                    Divider()
                }
            }
        }
    }
}
