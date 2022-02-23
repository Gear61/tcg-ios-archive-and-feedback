//
//  LearningQuicklyContentProvider.swift
//  TCG
//
//  Created by Alexander Chiou on 2/22/22.
//

import Foundation

class LearningQuicklyContentProvider: ObservableObject {
    
    var lessons: [Lesson]
    
    init() {
        self.lessons = []
        lessons.append(makeLesson1())
    }
    
    private func makeLesson1() -> Lesson {
        var questions = [Question]()
        questions.append(
            Question(
                text: "What is a good amount of time to be stuck before asking a question?",
                options: [
                    Question.Option(id: "1 - 2 minutes"),
                    Question.Option(id: "15 - 20 minutes"),
                    Question.Option(id: "3 - 4 hours"),
                    Question.Option(id: "1 - 2 days")
                ],
                correctAnswer: "15 - 20 minutes"
            )
        )
        
        questions.append(
            Question(
                text: "True or false: To prove that you are a good engineer when joining a new team, you should ask as few questions as possible.",
                options: [
                    Question.Option(id: "True"),
                    Question.Option(id: "False")
                ],
                correctAnswer: "False"
            )
        )
        
        questions.append(
            Question(
                text: "What is the optimal amount of questions to ask per week as a junior engineer?",
                options: [
                    Question.Option(id: "1 - 2"),
                    Question.Option(id: "3 - 5"),
                    Question.Option(id: "10 - 15"),
                    Question.Option(id: "None of the above")
                ],
                correctAnswer: "None of the above"
            )
        )
        
        questions.append(
            Question(
                text: "True or false: Asking a lot of questions can help other people in your company and increase your respect within your team.",
                options: [
                    Question.Option(id: "True"),
                    Question.Option(id: "False")
                ],
                correctAnswer: "True"
            )
        )
        
        questions.append(
            Question(
                text: "What are the benefits of asking a lot of good questions?",
                options: [
                    Question.Option(id: "You learn faster"),
                    Question.Option(id: "You help other people who have the same question"),
                    Question.Option(id: "You are creating a useful piece of content via your question and answer pair"),
                    Question.Option(id: "All of the above")
                ],
                correctAnswer: "All of the above"
            )
        )
        
        let lessonId = "learning-quickly-1"
        let completionStatus = UserDefaultUtil.getLessonCompletionStatus(lessonId: lessonId)
        return Lesson(
            id: lessonId,
            type: LessonType.LEARNING_QUICKLY,
            name: "There Is No Such Thing As A Stupid Question",
            youtubeVideoId: "fVgZBX0yinc",
            isCompleted: completionStatus,
            questions: questions
        )
    }
}
