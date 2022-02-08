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
        lessons.append(makeLesson2())
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
            type: LessonType.PROMOTION,
            name: "The One Thing You Need To Know About Promotion In Tech",
            youtubeVideoId: "8a-ZMCGg4rc",
            isCompleted: completionStatus,
            questions: questions
        )
    }
    
    private func makeLesson2() -> Lesson {
        var questions = [Question]()
        questions.append(
            Question(
                text: "True or false: Very senior engineers are at their levels because they act and operate in a fundamentally different way from their more junior peers.",
                options: [
                    Question.Option(id: "True"),
                    Question.Option(id: "False")
                ],
                correctAnswer: "True"
            )
        )
        
        questions.append(
            Question(
                text: "How can you properly tell the more senior engineers from the others?",
                options: [
                    Question.Option(id: "The large amount of people they are able to influence and work through"),
                    Question.Option(id: "How they act (i.e. their behavior)"),
                    Question.Option(id: "The team naturally gravitating around them for insight and support"),
                    Question.Option(id: "All of the above")
                ],
                correctAnswer: "All of the above"
            )
        )
        
        questions.append(
            Question(
                text: "Which one of these is a core example of what a very senior (i.e. Staff or above) engineer would do?",
                options: [
                    Question.Option(id: "Talking the loudest and the most in meetings"),
                    Question.Option(id: "Coming in earlier and then leaving later than everyone else"),
                    Question.Option(id: "Setting the vision for the team"),
                    Question.Option(id: "All of the above")
                ],
                correctAnswer: "Setting the vision for the team"
            )
        )
        
        let lessonId = "promotion-2"
        let completionStatus = UserDefaultUtil.getLessonCompletionStatus(lessonId: lessonId)
        return Lesson(
            id: lessonId,
            type: LessonType.PROMOTION,
            name: "Understanding The Differences Between Engineering Levels",
            youtubeVideoId: "tdfXpFZriFI",
            isCompleted: completionStatus,
            questions: questions
        )
    }
}
