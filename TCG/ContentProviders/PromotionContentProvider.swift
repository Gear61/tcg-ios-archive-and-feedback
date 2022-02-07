//
//  PromotionContentProvider.swift
//  TCG
//
//  Created by Alexander Chiou on 2/7/22.
//

import Foundation

class PromotionContentProvider: ObservableObject {
    
    var lessons: [Lesson]
    
    init() {
        self.lessons = []
        lessons.append(makeLesson1())
    }
    
    private func makeLesson1() -> Lesson {
        var questions = [Question]()
        questions.append(
            Question(
                text: "What is promotion fundamentally about?",
                options: [
                    Question.Option(id: "Output"),
                    Question.Option(id: "Behavior"),
                    Question.Option(id: "Playing politics"),
                    Question.Option(id: "All of the above")
                ],
                correctAnswer: "Behavior"
            )
        )
        
        questions.append(
            Question(
                text: "True or false: To get to very senior engineering levels, you need to write thousands of lines of code per day.",
                options: [
                    Question.Option(id: "True"),
                    Question.Option(id: "False")
                ],
                correctAnswer: "False"
            )
        )
        
        questions.append(
            Question(
                text: "Why is output not as important for promotion?",
                options: [
                    Question.Option(id: "It's not physically scalable"),
                    Question.Option(id: "It's really hard to have a lot of influence just writing code"),
                    Question.Option(id: "Becoming more senior is more about empowering others to write code"),
                    Question.Option(id: "All of the above")
                ],
                correctAnswer: "All of the above"
            )
        )
        
        let lessonId = "promotion-1"
        let completionStatus = UserDefaultUtil.getLessonCompletionStatus(lessonId: lessonId)
        return Lesson(
            id: lessonId,
            type: "Promotion",
            name: "The One Thing You Need To Know About Promotion In Tech",
            youtubeVideoId: "8a-ZMCGg4rc",
            isCompleted: completionStatus,
            questions: questions
        )
    }
}
