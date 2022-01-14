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
        var questions = [Question]()
        questions.append(
            Question(
                text: "Which of these is the core build block of data structures and algorithms problems?",
                options: [
                    Question.Option(id: "Graphs"),
                    Question.Option(id: "Patterns"),
                    Question.Option(id: "Code"),
                    Question.Option(id: "Trees")
                ],
                correctAnswer: "Patterns"
            )
        )
        
        questions.append(
            Question(
                text: "True or false: The most effective way to be prepared for data structures and algorithms interview problems is to memorize the code of each problem's solution line by line.",
                options: [
                    Question.Option(id: "True"),
                    Question.Option(id: "False")
                ],
                correctAnswer: "False"
            )
        )
        
        let lessonId = "interviewing-1"
        let completionStatus = UserDefaults.standard.bool(forKey: lessonId)
        return Lesson(
            id: lessonId,
            type: "Interviewing",
            name: "Properly Learning Data Structures And Algorithms",
            youtubeVideoId: "j9FD_Y5JTbw",
            isCompleted: completionStatus,
            questions: questions
        )
    }
    
    private func makeLesson2() -> Lesson {
        var questions = [Question]()
        questions.append(
            Question(
                text: "Which of these are the core build block of data structures and algorithms problems?",
                options: [
                    Question.Option(id: "Graphs"),
                    Question.Option(id: "Patterns"),
                    Question.Option(id: "Code"),
                    Question.Option(id: "Trees")
                ],
                correctAnswer: "Patterns"
            )
        )
        
        let lessonId = "interviewing-2"
        let completionStatus = UserDefaults.standard.bool(forKey: lessonId)
        return Lesson(
            id: lessonId,
            type: "Interviewing",
            name: "Having The Proper Mindset",
            youtubeVideoId: "guxFTl_qIRg",
            isCompleted: completionStatus,
            questions: questions
        )
    }
}
