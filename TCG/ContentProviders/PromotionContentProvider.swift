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
                text: "What separates the top senior engineers from everyone else?",
                options: [
                    Question.Option(id: "Writing code the fastest"),
                    Question.Option(id: "Being able to break down large, ambiguous problems"),
                    Question.Option(id: "Working harder than everyone else"),
                    Question.Option(id: "All of the above")
                ],
                correctAnswer: "Being able to break down large, ambiguous problems"
            )
        )
        
        questions.append(
            Question(
                text: "True or false: One of the reasons top tech companies are so strong is because they are so well organized. Every project is neatly defined, so when engineers take them on, they can just execute quickly and easily.",
                options: [
                    Question.Option(id: "True"),
                    Question.Option(id: "False")
                ],
                correctAnswer: "False"
            )
        )
        
        questions.append(
            Question(
                text: "Which one of these is the enemy of productivity?",
                options: [
                    Question.Option(id: "JavaScript"),
                    Question.Option(id: "Time"),
                    Question.Option(id: "Ambiguity"),
                    Question.Option(id: "Music")
                ],
                correctAnswer: "Ambiguity"
            )
        )
        
        questions.append(
            Question(
                text: "True or false: A lot of senior engineers write very little code, adding value in other ways.",
                options: [
                    Question.Option(id: "True"),
                    Question.Option(id: "False")
                ],
                correctAnswer: "True"
            )
        )
        
        questions.append(
            Question(
                text: "Why is it important to break problems down?",
                options: [
                    Question.Option(id: "So that your brain registers wins more often"),
                    Question.Option(id: "To make projects more concrete and easier to understand"),
                    Question.Option(id: "To allow work to be done in parallel when you have a team"),
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
