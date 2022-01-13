//
//  InterviewContentProvider.swift
//  TCG
//
//  Created by Alexander Chiou on 1/12/22.
//

import Foundation

class InterviewContentProvider: ObservableObject {
    
    var lessons: [Lesson]
    
    init() {
        self.lessons = []
        lessons.append(makeLesson1())
        lessons.append(makeLesson2())
    }
    
    private func makeLesson1() -> Lesson {
        let questions = [Question]()
        
        return Lesson(
            id: "interviewing-1",
            name: "Properly Learning Data Structures And Algorithms",
            youtubeUrl: "https://www.youtube.com/watch?v=j9FD_Y5JTbw",
            isCompleted: false,
            questions: questions
        )
    }
    
    private func makeLesson2() -> Lesson {
        let questions = [Question]()
        
        return Lesson(
            id: "interviewing-2",
            name: "Having The Proper Mindset",
            youtubeUrl: "https://www.youtube.com/watch?v=guxFTl_qIRg",
            isCompleted: true,
            questions: questions
        )
    }
}
