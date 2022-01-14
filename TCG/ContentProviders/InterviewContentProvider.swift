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
