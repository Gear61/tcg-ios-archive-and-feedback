//
//  LessonTagViewModel.swift
//  TCG
//
//  Created by Alexander Chiou on 3/8/22.
//

import Foundation

class LessonTagViewModel: ObservableObject {
    
    var tag: LessonTag
    var lessons: [Lesson]
    
    @Published var completionPercent: Int
    
    init(
        tag: LessonTag,
        lessons: [Lesson]
    ) {
        self.tag = tag
        self.lessons = lessons
        
        var numComplete: Float = 0.0
        for lesson in lessons {
            if (lesson.isCompleted) {
                numComplete += 1.0
            }
        }
        let countFloat = Float(lessons.count)
        self.completionPercent = Int((numComplete / countFloat) * 100.0)
    }
    
    func getNumLessonsText() -> String {
        let countString = String(lessons.count)
        return countString + " Lessons"
    }
}
