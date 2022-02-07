//
//  ProductivityContentProvider.swift
//  TCG
//
//  Created by Alexander Chiou on 1/29/22.
//

import Foundation

class ProductivityContentProvider: ObservableObject {
    
    var lessons: [Lesson]
    
    init() {
        self.lessons = []
        lessons.append(makeLesson1())
        lessons.append(makeLesson2())
        lessons.append(makeLesson3())
        lessons.append(makeLesson4())
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
        
        let lessonId = "productivity-1"
        let completionStatus = UserDefaultUtil.getLessonCompletionStatus(lessonId: lessonId)
        return Lesson(
            id: lessonId,
            type: LessonType.PRODUCTIVITY,
            name: "Setting Up Your Mindset For Long-Term Success And What Separates The Top Engineers From The Rest",
            youtubeVideoId: "XqBA2fkvUTg",
            isCompleted: completionStatus,
            questions: questions
        )
    }
    
    private func makeLesson2() -> Lesson {
        var questions = [Question]()
        questions.append(
            Question(
                text: "How do you make every one of your days productive?",
                options: [
                    Question.Option(id: "Drinking lots of coffee"),
                    Question.Option(id: "Buying a faster computer"),
                    Question.Option(id: "Waking up at 4:30AM"),
                    Question.Option(id: "Having a focused, singular goal")
                ],
                correctAnswer: "Having a focused, singular goal"
            )
        )
        
        questions.append(
            Question(
                text: "True or false: People overestimate what they can do in 1 day while underestimating what they can accomplish in 1 year.",
                options: [
                    Question.Option(id: "True"),
                    Question.Option(id: "False")
                ],
                correctAnswer: "True"
            )
        )
        
        questions.append(
            Question(
                text: "Which of these attributes should your singular daily goal have?",
                options: [
                    Question.Option(id: "It should be relatively small, maybe even scoped down"),
                    Question.Option(id: "It should be flashy and exciting"),
                    Question.Option(id: "It should be something you can share on social media"),
                    Question.Option(id: "All of the above")
                ],
                correctAnswer: "It should be relatively small, maybe even scoped down"
            )
        )
        
        questions.append(
            Question(
                text: "True or false: You should try to keep your goals purely inside your head instead of writing them down. This saves you time and prevents you from overloading yourself with too many notes.",
                options: [
                    Question.Option(id: "True"),
                    Question.Option(id: "False")
                ],
                correctAnswer: "False"
            )
        )
        
        questions.append(
            Question(
                text: "Which of these helps lead to action?",
                options: [
                    Question.Option(id: "Caffeine"),
                    Question.Option(id: "Clarity"),
                    Question.Option(id: "Pressure"),
                    Question.Option(id: "All of the above")
                ],
                correctAnswer: "Clarity"
            )
        )
        
        let lessonId = "productivity-2"
        let completionStatus = UserDefaultUtil.getLessonCompletionStatus(lessonId: lessonId)
        return Lesson(
            id: lessonId,
            type: LessonType.PRODUCTIVITY,
            name: "How To Accomplish Something Every Single Day",
            youtubeVideoId: "3gvjpMhhfnY",
            isCompleted: completionStatus,
            questions: questions
        )
    }
    
    private func makeLesson3() -> Lesson {
        var questions = [Question]()
        questions.append(
            Question(
                text: "Which one of these is a crucial skill working in a top tech company?",
                options: [
                    Question.Option(id: "Writing JIRA tickets"),
                    Question.Option(id: "Time management"),
                    Question.Option(id: "Attending meetings"),
                    Question.Option(id: "All of the above")
                ],
                correctAnswer: "Time management"
            )
        )
        
        questions.append(
            Question(
                text: "True or false: Time is an overpowered, often underappreciated resource.",
                options: [
                    Question.Option(id: "True"),
                    Question.Option(id: "False")
                ],
                correctAnswer: "True"
            )
        )
        
        questions.append(
            Question(
                text: "Why is time such a valuable resource?",
                options: [
                    Question.Option(id: "It can be converted into almost every other resource"),
                    Question.Option(id: "You can't really acquire more of it, at least not easily"),
                    Question.Option(id: "You need it to accomplish everything you do"),
                    Question.Option(id: "All of the above")
                ],
                correctAnswer: "All of the above"
            )
        )

        let lessonId = "productivity-3"
        let completionStatus = UserDefaultUtil.getLessonCompletionStatus(lessonId: lessonId)
        return Lesson(
            id: lessonId,
            type: LessonType.PRODUCTIVITY,
            name: "Why Time Is 100x More Valuable Than Money In Tech",
            youtubeVideoId: "7VwKfMZUFxk",
            isCompleted: completionStatus,
            questions: questions
        )
    }
    
    private func makeLesson4() -> Lesson {
        var questions = [Question]()
        questions.append(
            Question(
                text: "Which of these is the best gift you can give yourself when it comes to productivity?",
                options: [
                    Question.Option(id: "Coffee"),
                    Question.Option(id: "Uninterrupted focus time"),
                    Question.Option(id: "Extra time from sleeping less"),
                    Question.Option(id: "Getting encouragement from social media")
                ],
                correctAnswer: "Uninterrupted focus time"
            )
        )
        
        questions.append(
            Question(
                text: "True or false: Phones are great productivity tools as they allow us to accomplish almost anything in a really convenient way. This is why we should make sure that we always have our phones close by as we are working.",
                options: [
                    Question.Option(id: "True"),
                    Question.Option(id: "False")
                ],
                correctAnswer: "False"
            )
        )
        
        questions.append(
            Question(
                text: "What is deep work?",
                options: [
                    Question.Option(id: "The ability to focus without distraction on a cognitively demanding task"),
                    Question.Option(id: "Working on a very complex problem with modern technologies"),
                    Question.Option(id: "Debugging a very tricky bug"),
                    Question.Option(id: "Getting lots of certifications within just 1 tech stack")
                ],
                correctAnswer: "The ability to focus without distraction on a cognitively demanding task"
            )
        )
        
        questions.append(
            Question(
                text: "Where should you have your phone when you are trying to do deep work?",
                options: [
                    Question.Option(id: "In your pocket"),
                    Question.Option(id: "An inconvenient distance away outside of arm's reach, like another room"),
                    Question.Option(id: "On the table where you are working"),
                    Question.Option(id: "On the ground")
                ],
                correctAnswer: "An inconvenient distance away outside of arm\'s reach, like another room"
            )
        )
        
        questions.append(
            Question(
                text: "Between flow state and context switching, which is the safer option to invest into to make yourself more productive?",
                options: [
                    Question.Option(id: "Flow state"),
                    Question.Option(id: "Context switching")
                ],
                correctAnswer: "Flow state"
            )
        )
        
        let lessonId = "productivity-4"
        let completionStatus = UserDefaultUtil.getLessonCompletionStatus(lessonId: lessonId)
        return Lesson(
            id: lessonId,
            type: LessonType.PRODUCTIVITY,
            name: "The Best Gift You Can Give Yourself",
            youtubeVideoId: "L8a4Sc17DLw",
            isCompleted: completionStatus,
            questions: questions
        )
    }
}
