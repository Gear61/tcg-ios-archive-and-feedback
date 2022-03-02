//
//  MeetingsLessonProvider.swift
//  TCG
//
//  Created by Alexander Chiou on 3/1/22.
//

import Foundation

class MeetingsContentProvider: ObservableObject {
    
    var lessons: [Lesson]
    
    init() {
        self.lessons = []
        lessons.append(makeLesson1())
        lessons.append(makeLesson2())
        lessons.append(makeLesson3())
    }
    
    private func makeLesson1() -> Lesson {
        var questions = [Question]()
        questions.append(
            Question(
                text: "Which is the core principle you have to remember with meetings?",
                options: [
                    Question.Option(id: "It is important to go to every single meeting, especially as junior engineer"),
                    Question.Option(id: "They are inherently expensive, as they are a pure usage of time"),
                    Question.Option(id: "They are necessary for status updates"),
                    Question.Option(id: "None of the above")
                ],
                correctAnswer: "They are inherently expensive, as they are a pure usage of time"
            )
        )
        
        questions.append(
            Question(
                text: "True or false: It is safer to just keep attending a meeting series, even if you are not clear exactly what value you are getting from it.",
                options: [
                    Question.Option(id: "True"),
                    Question.Option(id: "False")
                ],
                correctAnswer: "False"
            )
        )
        
        questions.append(
            Question(
                text: "You have a meeting series where there is always action, but there is always an awkward portion at the end where people run out of topics. What should you do?",
                options: [
                    Question.Option(id: "Decrease the length of the meeting"),
                    Question.Option(id: "Delete the meeting"),
                    Question.Option(id: "Invite more people to the meeting, so you have more to talk about"),
                    Question.Option(id: "All of the above")
                ],
                correctAnswer: "Decrease the length of the meeting"
            )
        )
        
        questions.append(
            Question(
                text: "True or false: When in doubt of a meeting's value prop, just delete it. You can always bring it back later.",
                options: [
                    Question.Option(id: "True"),
                    Question.Option(id: "False")
                ],
                correctAnswer: "True"
            )
        )
        
        questions.append(
            Question(
                text: "You have a 1 on 1 meeting series, and by the time of the meeting, you feel like there are a lot of issues that you two are getting to too late. What should you do?",
                options: [
                    Question.Option(id: "Decrease the length of the meeting"),
                    Question.Option(id: "Increase the frequency of the meeting"),
                    Question.Option(id: "Push for the team to work on projects more slowly"),
                    Question.Option(id: "None of the above")
                ],
                correctAnswer: "Increase the frequency of the meeting"
            )
        )
        
        let lessonId = "meetings-1"
        let completionStatus = UserDefaultUtil.getLessonCompletionStatus(lessonId: lessonId)
        return Lesson(
            id: lessonId,
            type: LessonType.LEARNING_QUICKLY,
            name: "The #1 Thing To Remember With Meetings",
            youtubeVideoId: "e6Ej_9mEc10",
            isCompleted: completionStatus,
            questions: questions
        )
    }
    
    private func makeLesson2() -> Lesson {
        var questions = [Question]()
        questions.append(
            Question(
                text: "What do you absolutely need to with every single meeting in order to make it effective?",
                options: [
                    Question.Option(id: "Talk a lot"),
                    Question.Option(id: "Tell people what to do"),
                    Question.Option(id: "Have a goal or set of goals for that meeting to achieve"),
                    Question.Option(id: "None of the above")
                ],
                correctAnswer: "Have a goal or set of goals for that meeting to achieve"
            )
        )
        
        questions.append(
            Question(
                text: "What is the most important question you should be asking yourself constantly during a meeting?",
                options: [
                    Question.Option(id: "Did someone say something wrong that I need to call out?"),
                    Question.Option(id: "Is the meeting achieving its goal(s)?"),
                    Question.Option(id: "How do I talk more during this meeting?"),
                    Question.Option(id: "None of the above")
                ],
                correctAnswer: "Is the meeting achieving its goal(s)?"
            )
        )
        
        let lessonId = "meetings-2"
        let completionStatus = UserDefaultUtil.getLessonCompletionStatus(lessonId: lessonId)
        return Lesson(
            id: lessonId,
            type: LessonType.LEARNING_QUICKLY,
            name: "Making Every Single Meeting You Have Effective",
            youtubeVideoId: "ZzQquAy7gwQ",
            isCompleted: completionStatus,
            questions: questions
        )
    }
    
    private func makeLesson3() -> Lesson {
        var questions = [Question]()
        questions.append(
            Question(
                text: "What is the most straightforward way to level up a meeting?",
                options: [
                    Question.Option(id: "Make it longer"),
                    Question.Option(id: "Write down what happens in the meeting and maintain a running set of notes"),
                    Question.Option(id: "Invite more people in leadership roles to the meeting"),
                    Question.Option(id: "None of the above")
                ],
                correctAnswer: "Write down what happens in the meeting and maintain a running set of notes"
            )
        )
        
        questions.append(
            Question(
                text: "True or false: Maintaining a good set of meeting notes can help you substantially with promotion.",
                options: [
                    Question.Option(id: "True"),
                    Question.Option(id: "False")
                ],
                correctAnswer: "True"
            )
        )
        
        questions.append(
            Question(
                text: "Which of the following are benefits of maintaining meeting notes?",
                options: [
                    Question.Option(id: "It helps you remember what happened during the meeting"),
                    Question.Option(id: "It allows you to reflect on how useful a meeting series is"),
                    Question.Option(id: "It shows that you care a lot about the meeting and the people within it"),
                    Question.Option(id: "All of the above")
                ],
                correctAnswer: "All of the above"
            )
        )
        
        let lessonId = "meetings-3"
        let completionStatus = UserDefaultUtil.getLessonCompletionStatus(lessonId: lessonId)
        return Lesson(
            id: lessonId,
            type: LessonType.LEARNING_QUICKLY,
            name: "The Most Straightforward Way To Level Up Your Meetings",
            youtubeVideoId: "BIcS6glgqyQ",
            isCompleted: completionStatus,
            questions: questions
        )
    }
}
