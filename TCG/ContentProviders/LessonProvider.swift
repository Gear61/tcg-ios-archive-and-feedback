//
//  LessonProvider.swift
//  TCG
//
//  Created by Alexander Chiou on 3/7/22.
//

import Foundation

class LessonProvider: ObservableObject {
    
    var lessons: [Lesson]
    
    init() {
        self.lessons = []
        lessons.append(contentsOf: InterviewContentProvider.getLessons())
        lessons.append(contentsOf: ResumeContentProvider.getLessons())
        lessons.append(contentsOf: ProductivityContentProvider.getLessons())
        lessons.append(contentsOf: PromotionContentProvider.getLessons())
        lessons.append(contentsOf: LearningQuicklyContentProvider.getLessons())
        lessons.append(contentsOf: MeetingsContentProvider.getLessons())
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
