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
        lessons.append(makeLesson4())
        lessons.append(makeLesson5())
        lessons.append(makeLesson6())
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
    
    private func makeLesson4() -> Lesson {
        var questions = [Question]()
        questions.append(
            Question(
                text: "For any meeting, what should you make sure for it?",
                options: [
                    Question.Option(id: "It is clear who is responsible for taking notes"),
                    Question.Option(id: "That everyone on the meeting invite is coming"),
                    Question.Option(id: "That at least 5 people are on the meeting if it is a team meeting"),
                    Question.Option(id: "None of the above")
                ],
                correctAnswer: "It is clear who is responsible for taking notes"
            )
        )
        
        questions.append(
            Question(
                text: "True or false: As long as you write down most of what was said in a meeting, you have taken a good set of meeting notes.",
                options: [
                    Question.Option(id: "True"),
                    Question.Option(id: "False")
                ],
                correctAnswer: "False"
            )
        )
        
        questions.append(
            Question(
                text: "What can you do when someone else in a meeting says something really insightful?",
                options: [
                    Question.Option(id: "Stop paying attention to the meeting, so you can write it down"),
                    Question.Option(id: "Stop the meeting and ask them to send an email to the entire team with that insight"),
                    Question.Option(id: "Call out how you found what they just said to be very valuable and ask them for a bit of time so you can write it down"),
                    Question.Option(id: "None of the above")
                ],
                correctAnswer: "Call out how you found what they just said to be very valuable and ask them for a bit of time so you can write it down"
            )
        )
        
        questions.append(
            Question(
                text: "Your meeting is winding down, and you have a good set of notes of what was said during the meeting. What should you do next?",
                options: [
                    Question.Option(id: "Your job is done. Tune out of the meeting"),
                    Question.Option(id: "Work with the meeting group to convert what was covered in the meeting into concrete action items"),
                    Question.Option(id: "Check your emails to see what you missed during the meeting"),
                    Question.Option(id: "None of the above")
                ],
                correctAnswer: "Work with the meeting group to convert what was covered in the meeting into concrete action items"
            )
        )
        
        let lessonId = "meetings-4"
        let completionStatus = UserDefaultUtil.getLessonCompletionStatus(lessonId: lessonId)
        return Lesson(
            id: lessonId,
            type: LessonType.LEARNING_QUICKLY,
            name: "Taking Amazing Meeting Notes",
            youtubeVideoId: "b4A4zPu4xMQ",
            isCompleted: completionStatus,
            questions: questions
        )
    }
    
    private func makeLesson5() -> Lesson {
        var questions = [Question]()
        questions.append(
            Question(
                text: "What can you do before a meeting to empower it to achieve more outcomes?",
                options: [
                    Question.Option(id: "Meditate"),
                    Question.Option(id: "Get free donuts for everyone in the meeting"),
                    Question.Option(id: "Write down an agenda with discussion topics and seed it into the meeting notes document"),
                    Question.Option(id: "All of the above")
                ],
                correctAnswer: "Write down an agenda with discussion topics and seed it into the meeting notes document"
            )
        )
        
        questions.append(
            Question(
                text: "You write down an agenda for your upcoming meeting, and you realize that it is incredibly rich and complex. What else can you do to level up the meeting?",
                options: [
                    Question.Option(id: "Nothing, an agenda is all you need"),
                    Question.Option(id: "Come up with some funny stories to tell during the meeting"),
                    Question.Option(id: "Let everyone else on the meeting know that you have seeded it with an agenda, and you would appreciate them going through the agenda beforehand"),
                    Question.Option(id: "None of the above"),
                ],
                correctAnswer: "Let everyone else on the meeting know that you have seeded it with an agenda, and you would appreciate them going through the agenda beforehand"
            )
        )
        
        let lessonId = "meetings-5"
        let completionStatus = UserDefaultUtil.getLessonCompletionStatus(lessonId: lessonId)
        return Lesson(
            id: lessonId,
            type: LessonType.LEARNING_QUICKLY,
            name: "A Simple Trick To Make Your Meetings More Efficient",
            youtubeVideoId: "q8RxMZqVYmk",
            isCompleted: completionStatus,
            questions: questions
        )
    }
    
    private func makeLesson6() -> Lesson {
        var questions = [Question]()
        questions.append(
            Question(
                text: "Why should you err on the side of creating a 1 on 1 meeting instead of waiting for it to be absolutely necessary?",
                options: [
                    Question.Option(id: "They are relatively cheap as they only consume the time of 2 people"),
                    Question.Option(id: "1 on 1 meetings are crucial to functioning optimally within a team due to their deep relationship-building nature"),
                    Question.Option(id: "The consequences of not having a 1 on 1 meeting when you should have had one are often really painful"),
                    Question.Option(id: "All of the above")
                ],
                correctAnswer: "All of the above"
            )
        )
        
        questions.append(
            Question(
                text: "True or false: Team meetings are more important than 1 on 1 meetings, so you should create them more aggressively for everyone to stay in sync.",
                options: [
                    Question.Option(id: "True"),
                    Question.Option(id: "False")
                ],
                correctAnswer: "False"
            )
        )
        
        let lessonId = "meetings-6"
        let completionStatus = UserDefaultUtil.getLessonCompletionStatus(lessonId: lessonId)
        return Lesson(
            id: lessonId,
            type: LessonType.LEARNING_QUICKLY,
            name: "1 on 1 Meetings Are An Exercise In Proactivity",
            youtubeVideoId: "JmVVa94j04I",
            isCompleted: completionStatus,
            questions: questions
        )
    }
}
