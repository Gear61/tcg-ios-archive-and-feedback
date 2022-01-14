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
                text: "Which of these is the core building block of data structures and algorithms problems?",
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
        
        questions.append(
            Question(
                text: "Why should you comment your solutions to data structures and algorithms problems?",
                options: [
                    Question.Option(id: "To explain what every line of code does"),
                    Question.Option(id: "Because comments make good code"),
                    Question.Option(id: "It makes the code faster"),
                    Question.Option(id: "To capture the core insight behind the problem and the high-level approach")
                ],
                correctAnswer: "To capture the core insight behind the problem and the high-level approach"
            )
        )
        
        questions.append(
            Question(
                text: "True or false: When you are completely stuck, you should just look at the entire solution in order to learn it.",
                options: [
                    Question.Option(id: "True"),
                    Question.Option(id: "False")
                ],
                correctAnswer: "False"
            )
        )
        
        questions.append(
            Question(
                text: "Why is it healthy to struggle on data stuctures and algorithms problems?",
                options: [
                    Question.Option(id: "That's just how data structures and algorithms are"),
                    Question.Option(id: "You can tell your interviewer about it so they go easier on you"),
                    Question.Option(id: "Because that's when your mind is able to do true learning"),
                    Question.Option(id: "So you can complain about it on LinkedIn")
                ],
                correctAnswer: "Because that's when your mind is able to do true learning"
            )
        )
        
        let lessonId = "interviewing-1"
        let completionStatus = UserDefaults.standard.bool(forKey: lessonId)
        return Lesson(
            id: lessonId,
            type: "Interviewing",
            name: "Effectively Learning Data Structures And Algorithms",
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
