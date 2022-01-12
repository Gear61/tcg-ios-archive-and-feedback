//
//  InterviewContentProvider.swift
//  TCG
//
//  Created by Alexander Chiou on 1/12/22.
//

import Foundation

class InterviewContentProvider {
    
    var lessons: [Lesson]
    
    init() {
        self.lessons = []
        
        let lessonOne = Lesson(
            id: "lesson-one",
            name: "Lesson One",
            isCompleted: false,
            questions: []
        )
        lessons.append(lessonOne)
        
        let lessonTwo = Lesson(
            id: "lesson-two",
            name: "Lesson Two",
            isCompleted: true,
            questions: []
        )
        lessons.append(lessonTwo)
    }
}
