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
            type: "Interviewing",
            name: "Properly Learning Data Structures And Algorithms",
            youtubeVideoId: "j9FD_Y5JTbw",
            isCompleted: false,
            questions: questions
        )
    }
    
    private func makeLesson2() -> Lesson {
        let questions = [Question]()
        
        return Lesson(
            id: "interviewing-2",
            type: "Interviewing",
            name: "Having The Proper Mindset",
            youtubeVideoId: "guxFTl_qIRg",
            isCompleted: true,
            questions: questions
        )
    }
}
