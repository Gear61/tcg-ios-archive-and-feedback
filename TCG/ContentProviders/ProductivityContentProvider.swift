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
        lessons.append(makeLesson5())
        lessons.append(makeLesson6())
        lessons.append(makeLesson7())
        lessons.append(makeLesson8())
        lessons.append(makeLesson9())
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
    
    private func makeLesson5() -> Lesson {
        var questions = [Question]()
        questions.append(
            Question(
                text: "Why is reflection important when it comes to productivity?",
                options: [
                    Question.Option(id: "It helps you debug your unproductive periods of time"),
                    Question.Option(id: "It allows you to learn more about yourself"),
                    Question.Option(id: "It forces you to dig deep into the problems you faced and figure out what you can learn to become more efficient solving those problems"),
                    Question.Option(id: "All of the above")
                ],
                correctAnswer: "All of the above"
            )
        )
        
        questions.append(
            Question(
                text: "True or false: If you aren't getting as much done as you want, you should just work harder.",
                options: [
                    Question.Option(id: "True"),
                    Question.Option(id: "False")
                ],
                correctAnswer: "False"
            )
        )
        
        questions.append(
            Question(
                text: "Which one of these is a concrete tactic you can use to shore up your reflection?",
                options: [
                    Question.Option(id: "Making a post on LinkedIn whenever you have a bad day"),
                    Question.Option(id: "Scheduling a recurring meeting with yourself"),
                    Question.Option(id: "Adding more comments to your code"),
                    Question.Option(id: "All of the above")
                ],
                correctAnswer: "Scheduling a recurring meeting with yourself"
            )
        )

        let lessonId = "productivity-5"
        let completionStatus = UserDefaultUtil.getLessonCompletionStatus(lessonId: lessonId)
        return Lesson(
            id: lessonId,
            type: LessonType.PRODUCTIVITY,
            name: "The Importance of Reflection With Time Management",
            youtubeVideoId: "Ntb5IvW869s",
            isCompleted: completionStatus,
            questions: questions
        )
    }
    
    private func makeLesson6() -> Lesson {
        var questions = [Question]()
        questions.append(
            Question(
                text: "Which of these are valid tactics to minimize the distraction from your phone?",
                options: [
                    Question.Option(id: "Turning off notifications"),
                    Question.Option(id: "Having a dedicated time where you go through all your app updates at once"),
                    Question.Option(id: "Moving it out of arm's reach"),
                    Question.Option(id: "All of the above")
                ],
                correctAnswer: "All of the above"
            )
        )
        
        questions.append(
            Question(
                text: "True or false: As an engineer, it is important for you to attend every possible meeting so you can know everything that is going on, therefore empowering your productivity.",
                options: [
                    Question.Option(id: "True"),
                    Question.Option(id: "False")
                ],
                correctAnswer: "False"
            )
        )
        
        questions.append(
            Question(
                text: "As a software engineer, why is it crucial to reject meetings when possible?",
                options: [
                    Question.Option(id: "Software engineers are generally makers, so they need uninterrupted focus time"),
                    Question.Option(id: "Because all meetings are a waste of time"),
                    Question.Option(id: "So you can spend more time writing documentation, reducing the need for meetings"),
                    Question.Option(id: "To show that your time is valuable, it is important to turn down meeting requests sometimes")
                ],
                correctAnswer: "Software engineers are generally makers, so they need uninterrupted focus time"
            )
        )

        let lessonId = "productivity-6"
        let completionStatus = UserDefaultUtil.getLessonCompletionStatus(lessonId: lessonId)
        return Lesson(
            id: lessonId,
            type: LessonType.PRODUCTIVITY,
            name: "Easy Tactics You Can Apply Today To Increase Your Focus",
            youtubeVideoId: "PMUyZ7VoowE",
            isCompleted: completionStatus,
            questions: questions
        )
    }
    
    private func makeLesson7() -> Lesson {
        var questions = [Question]()
        questions.append(
            Question(
                text: "When it comes to productivity, what is eating the frog?",
                options: [
                    Question.Option(id: "Having a healthy breakfast"),
                    Question.Option(id: "Doing the hardest part of your main task at the start of your day"),
                    Question.Option(id: "Responding to all your emails and messages"),
                    Question.Option(id: "All of the above")
                ],
                correctAnswer: "Doing the hardest part of your main task at the start of your day"
            )
        )
        
        questions.append(
            Question(
                text: "True or false: To ease into your day, the best thing to do when you wake up is something easy and fun like checking your Instagram.",
                options: [
                    Question.Option(id: "True"),
                    Question.Option(id: "False")
                ],
                correctAnswer: "False"
            )
        )
        
        questions.append(
            Question(
                text: "Why is it important to eat the frog?",
                options: [
                    Question.Option(id: "It makes you write higher quality code"),
                    Question.Option(id: "It puts you immediately into a proactive mindset instead of a reactive one"),
                    Question.Option(id: "It helps maintain work/life balance"),
                    Question.Option(id: "All of the above")
                ],
                correctAnswer: "It puts you immediately into a proactive mindset instead of a reactive one"
            )
        )

        let lessonId = "productivity-7"
        let completionStatus = UserDefaultUtil.getLessonCompletionStatus(lessonId: lessonId)
        return Lesson(
            id: lessonId,
            type: LessonType.PRODUCTIVITY,
            name: "Eat The Frog",
            youtubeVideoId: "nrg02T8VSDY",
            isCompleted: completionStatus,
            questions: questions
        )
    }
    
    private func makeLesson8() -> Lesson {
        var questions = [Question]()
        questions.append(
            Question(
                text: "Why are accountability partners so helpful when it comes to productivity?",
                options: [
                    Question.Option(id: "They can unblock you when you are stuck"),
                    Question.Option(id: "They provide an outside perspective on how you work"),
                    Question.Option(id: "The social pressure is great for motivation"),
                    Question.Option(id: "All of the above")
                ],
                correctAnswer: "All of the above"
            )
        )
        
        questions.append(
            Question(
                text: "True or false: A good accountability partner is willing to shame you a bit sometimes.",
                options: [
                    Question.Option(id: "True"),
                    Question.Option(id: "False")
                ],
                correctAnswer: "True"
            )
        )
        
        questions.append(
            Question(
                text: "How do good accountability partners help with excuses?",
                options: [
                    Question.Option(id: "They force you to say them out loud"),
                    Question.Option(id: "They call them out for being excuses"),
                    Question.Option(id: "They make you see past the excuses and focus back on the work"),
                    Question.Option(id: "All of the above")
                ],
                correctAnswer: "All of the above"
            )
        )

        let lessonId = "productivity-8"
        let completionStatus = UserDefaultUtil.getLessonCompletionStatus(lessonId: lessonId)
        return Lesson(
            id: lessonId,
            type: LessonType.PRODUCTIVITY,
            name: "Accountability Partners",
            youtubeVideoId: "RPXLB8HH4Q4",
            isCompleted: completionStatus,
            questions: questions
        )
    }
    
    private func makeLesson9() -> Lesson {
        var questions = [Question]()
        questions.append(
            Question(
                text: "What are the 2 underutilized but straightforward ways of becoming far more productive?",
                options: [
                    Question.Option(id: "High-end computer and LinkedIn usage"),
                    Question.Option(id: "Performance coach and meditation"),
                    Question.Option(id: "Good sleep and regular exercise"),
                    Question.Option(id: "Competitive programming and reading architecture blogs")
                ],
                correctAnswer: "Good sleep and regular exercise"
            )
        )
        
        questions.append(
            Question(
                text: "True or false: Often times you should sacrifice sleep and exercise in order to get more hours, thereby becoming more productive.",
                options: [
                    Question.Option(id: "True"),
                    Question.Option(id: "False")
                ],
                correctAnswer: "False"
            )
        )
        
        questions.append(
            Question(
                text: "Why is it absolutely necessary to get in good sleep and regular exercise no matter what?",
                options: [
                    Question.Option(id: "They are the foundation to having a healthy physical core, which is necessary for longevity"),
                    Question.Option(id: "Your productivity severely deteriorates without them, cancelling out any gained hours from sacrificing them"),
                    Question.Option(id: "They are habits that you need to make time for"),
                    Question.Option(id: "All of the above")
                ],
                correctAnswer: "All of the above"
            )
        )

        let lessonId = "productivity-9"
        let completionStatus = UserDefaultUtil.getLessonCompletionStatus(lessonId: lessonId)
        return Lesson(
            id: lessonId,
            type: LessonType.PRODUCTIVITY,
            name: "The 2 Ways To Become 100x More Productive That Nobody Does",
            youtubeVideoId: "JtpVI7dc-9A",
            isCompleted: completionStatus,
            questions: questions
        )
    }
}
