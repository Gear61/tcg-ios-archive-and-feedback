//
//  LessonProvider.swift
//  TCG
//
//  Created by Alexander Chiou on 3/7/22.
//

import Foundation

class LessonProvider: ObservableObject {
    
    var interviewLessons = InterviewContentProvider()
    var resumeLessons = ResumeContentProvider()
    var productivityLessons = ProductivityContentProvider()
    var promotionLessons = PromotionContentProvider()
    var learningQuicklyLessons = LearningQuicklyContentProvider()
    var meetingsLessons = MeetingsContentProvider()
    
    var lessons: [Lesson]
    
    init() {
        self.lessons = []
        lessons.append(contentsOf: interviewLessons.lessons)
        lessons.append(contentsOf: resumeLessons.lessons)
        lessons.append(contentsOf: productivityLessons.lessons)
        lessons.append(contentsOf: promotionLessons.lessons)
        lessons.append(contentsOf: learningQuicklyLessons.lessons)
        lessons.append(contentsOf: meetingsLessons.lessons)
        verifyLessons(lessons: lessons)
    }
    
    private func verifyLessons(lessons: [Lesson]) {
        var seenYouTubeIds = Set<String>()
        var seenLessonIds = Set<String>()
        for lesson in lessons {
            if (seenLessonIds.contains(lesson.id)) {
                fatalError("Duplicate lesson ID of " + lesson.id)
            }
            seenLessonIds.insert(lesson.id)

            if (seenYouTubeIds.contains(lesson.youtubeVideoId)) {
                fatalError("Duplicate YouTube video ID of " + lesson.youtubeVideoId + " || Lesson ID: " + lesson.id)
            }
            seenYouTubeIds.insert(lesson.youtubeVideoId)
            
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
        }
    }
    
    func getLessons(type: LessonType) -> [Lesson] {
        var filteredLessons: [Lesson] = []
        for lesson in lessons {
            if (lesson.type == type) {
                filteredLessons.append(lesson)
            }
        }
        return filteredLessons
    }
}
