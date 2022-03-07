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
        lessons.append(makeLesson7())
        lessons.append(makeLesson8())
        lessons.append(makeLesson9())
        lessons.append(makeLesson10())
        lessons.append(makeLesson11())
        lessons.append(makeLesson12())
        lessons.append(makeLesson13())
        lessons.append(makeLesson14())
        lessons.append(makeLesson15())
        lessons.append(makeLesson16())
        lessons.append(makeLesson17())
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
                text: "You have a meeting series where there is always action, but there is usually an awkward portion at the end where people run out of topics. What should you do?",
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
            type: LessonType.MEETINGS,
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
            type: LessonType.MEETINGS,
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
            type: LessonType.MEETINGS,
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
            type: LessonType.MEETINGS,
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
            type: LessonType.MEETINGS,
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
            type: LessonType.MEETINGS,
            name: "1 on 1 Meetings Are An Exercise In Proactivity",
            youtubeVideoId: "JmVVa94j04I",
            isCompleted: completionStatus,
            questions: questions
        )
    }
    
    private func makeLesson7() -> Lesson {
        var questions = [Question]()
        questions.append(
            Question(
                text: "What is the main condition to look out for that could prompt you to set up new 1 on 1 meetings?",
                options: [
                    Question.Option(id: "New people entering your work ecosystem"),
                    Question.Option(id: "Needing a lot of executives to like you, so you set up meetings with them to get promoted"),
                    Question.Option(id: "You are bored and just want people to talk to"),
                    Question.Option(id: "None of the above")
                ],
                correctAnswer: "New people entering your work ecosystem"
            )
        )
        
        questions.append(
            Question(
                text: "Which of the following scenarios is something you probably should set up some new 1 on 1 meetings for?",
                options: [
                    Question.Option(id: "You are joining a new team"),
                    Question.Option(id: "New members are joining your team"),
                    Question.Option(id: "You need to work with a new team cross functionally"),
                    Question.Option(id: "All of the above")
                ],
                correctAnswer: "All of the above"
            )
        )
        
        let lessonId = "meetings-7"
        let completionStatus = UserDefaultUtil.getLessonCompletionStatus(lessonId: lessonId)
        return Lesson(
            id: lessonId,
            type: LessonType.MEETINGS,
            name: "Common Scenarios For Setting Up 1 on 1s",
            youtubeVideoId: "Et3Klf_jIhM",
            isCompleted: completionStatus,
            questions: questions
        )
    }
    
    private func makeLesson8() -> Lesson {
        var questions = [Question]()
        questions.append(
            Question(
                text: "Why should you build the relationship in 1 on 1 meetings?",
                options: [
                    Question.Option(id: "The more intimate nature makes it especially effective for earning social capital"),
                    Question.Option(id: "It helps pass the time"),
                    Question.Option(id: "So they can help debug your code"),
                    Question.Option(id: "All of the above")
                ],
                correctAnswer: "The more intimate nature makes it especially effective for earning social capital"
            )
        )
        
        questions.append(
            Question(
                text: "True or false: Small talk is okay in 1 on 1 meetings to break the ice and learn more about the other person's life outside of work.",
                options: [
                    Question.Option(id: "True"),
                    Question.Option(id: "False")
                ],
                correctAnswer: "True"
            )
        )
        
        questions.append(
            Question(
                text: "Why are deep relationships needed in tech, especially at senior levels?",
                options: [
                    Question.Option(id: "When things get hard or go wrong, your earned trust will lead to these people having your back"),
                    Question.Option(id: "So you can play politics effectively and exclude your enemies"),
                    Question.Option(id: "So you can get more lenient code reviews"),
                    Question.Option(id: "All of the above")
                ],
                correctAnswer: "When things get hard or go wrong, your earned trust will lead to these people having your back"
            )
        )
        
        let lessonId = "meetings-8"
        let completionStatus = UserDefaultUtil.getLessonCompletionStatus(lessonId: lessonId)
        return Lesson(
            id: lessonId,
            type: LessonType.MEETINGS,
            name: "Build The Relationship",
            youtubeVideoId: "GJHsNeogthY",
            isCompleted: completionStatus,
            questions: questions
        )
    }
    
    private func makeLesson9() -> Lesson {
        var questions = [Question]()
        questions.append(
            Question(
                text: "Why should you be awkward and even a little bit uncomfortable in 1 on 1 meetings?",
                options: [
                    Question.Option(id: "1 on 1 meetings are inherently a very inefficient way of conveying information, so you should take the opportunity to talk about more real, heavy-hitting topics"),
                    Question.Option(id: "True growth happens when you are uncomfortable"),
                    Question.Option(id: "The transparency helps build the relationship"),
                    Question.Option(id: "All of the above")
                ],
                correctAnswer: "All of the above"
            )
        )
        
        questions.append(
            Question(
                text: "True or false: 1 on 1 meetings are great for staying in sync, so status updates are one of the best things you can talk about during them.",
                options: [
                    Question.Option(id: "True"),
                    Question.Option(id: "False")
                ],
                correctAnswer: "False"
            )
        )
        
        questions.append(
            Question(
                text: "Which of the following are good things to talk about in 1 on 1 meetings?",
                options: [
                    Question.Option(id: "Feedback to improve"),
                    Question.Option(id: "How you are feeling"),
                    Question.Option(id: "The struggles you are facing, both inside and outside of work"),
                    Question.Option(id: "All of the above")
                ],
                correctAnswer: "All of the above"
            )
        )
        
        let lessonId = "meetings-9"
        let completionStatus = UserDefaultUtil.getLessonCompletionStatus(lessonId: lessonId)
        return Lesson(
            id: lessonId,
            type: LessonType.MEETINGS,
            name: "Be Awkward",
            youtubeVideoId: "4XFgKxYfrxY",
            isCompleted: completionStatus,
            questions: questions
        )
    }
    
    private func makeLesson10() -> Lesson {
        var questions = [Question]()
        questions.append(
            Question(
                text: "If you are working in a strong, high-growth tech company, what is a good frequency to meet with your manager?",
                options: [
                    Question.Option(id: "Once a day"),
                    Question.Option(id: "Once every 1-2 weeks"),
                    Question.Option(id: "Once every 1-2 months"),
                    Question.Option(id: "None of the above")
                ],
                correctAnswer: "Once every 1-2 weeks"
            )
        )
        
        questions.append(
            Question(
                text: "True or false: Managers are extremely busy, so it is best to have ad-hoc 1 on 1 meetings with them based on whenever they are able to find a sliver of free time.",
                options: [
                    Question.Option(id: "True"),
                    Question.Option(id: "False")
                ],
                correctAnswer: "False"
            )
        )
        
        let lessonId = "meetings-10"
        let completionStatus = UserDefaultUtil.getLessonCompletionStatus(lessonId: lessonId)
        return Lesson(
            id: lessonId,
            type: LessonType.MEETINGS,
            name: "Structuring Your Manager 1 on 1",
            youtubeVideoId: "3x4Oz332R9s",
            isCompleted: completionStatus,
            questions: questions
        )
    }
    
    private func makeLesson11() -> Lesson {
        var questions = [Question]()
        questions.append(
            Question(
                text: "Your manager keeps canceling your 1 on 1s due to a perceived lack of discussion topics, even though you always have a lot to talk about. What do you do?",
                options: [
                    Question.Option(id: "Nothing, just talk with someone else instead"),
                    Question.Option(id: "Fill in a detailed, well-articulated agenda before each 1 on 1 and share it with your manager prior to the meeting"),
                    Question.Option(id: "Complain to the manager of your manager"),
                    Question.Option(id: "None of the above")
                ],
                correctAnswer: "Fill in a detailed, well-articulated agenda before each 1 on 1 and share it with your manager prior to the meeting"
            )
        )
        
        questions.append(
            Question(
                text: "Your manager cancels your upcoming 1 on 1 meeting due to an unexpected, new fire that they have to deal with. However, you have a lot of important issues to talk about. What do you do?",
                options: [
                    Question.Option(id: "Nothing, just wait for the next 1 on 1 as this is just how things are sometimes"),
                    Question.Option(id: "Tell them that you understand the need to deal with fires and that you really value your time together. Proactively find a new time later in the week and move the 1 on 1 there"),
                    Question.Option(id: "Tell your manager that they should just ignore the fire as things break all the time"),
                    Question.Option(id: "None of the above")
                ],
                correctAnswer: "Tell them that you understand the need to deal with fires and that you really value your time together. Proactively find a new time later in the week and move the 1 on 1 there"
            )
        )
        
        let lessonId = "meetings-11"
        let completionStatus = UserDefaultUtil.getLessonCompletionStatus(lessonId: lessonId)
        return Lesson(
            id: lessonId,
            type: LessonType.MEETINGS,
            name: "What To Do If Your Manager Keeps Canceling Your 1 on 1s",
            youtubeVideoId: "bPk5gEoGLAU",
            isCompleted: completionStatus,
            questions: questions
        )
    }
    
    private func makeLesson12() -> Lesson {
        var questions = [Question]()
        questions.append(
            Question(
                text: "True or false: Delayed and infrequent manager 1 on 1s can seriously affect your career growth long-term.",
                options: [
                    Question.Option(id: "True"),
                    Question.Option(id: "False")
                ],
                correctAnswer: "True"
            )
        )
        
        questions.append(
            Question(
                text: "Why is it crucial to have frequent, consistent 1 on 1 meetings with your manager?",
                options: [
                    Question.Option(id: "It forces you two to think about serious, longer-term issues like your personal career growth"),
                    Question.Option(id: "It is vital towards building up this crucial work relationship"),
                    Question.Option(id: "It maintains the quality of your work life as it prevents work problems from festering over time"),
                    Question.Option(id: "All of the above")
                ],
                correctAnswer: "All of the above"
            )
        )
        
        let lessonId = "meetings-12"
        let completionStatus = UserDefaultUtil.getLessonCompletionStatus(lessonId: lessonId)
        return Lesson(
            id: lessonId,
            type: LessonType.MEETINGS,
            name: "Why Delayed And Infrequent Manager 1 on 1s Are Like Procrastination",
            youtubeVideoId: "NswneqhmEJ4",
            isCompleted: completionStatus,
            questions: questions
        )
    }
    
    private func makeLesson13() -> Lesson {
        var questions = [Question]()
        questions.append(
            Question(
                text: "True or false: Your manager is your superior, so it is on them to ask the right questions and figure out what you need in your 1 on 1 meetings. You just need to show up on time.",
                options: [
                    Question.Option(id: "True"),
                    Question.Option(id: "False")
                ],
                correctAnswer: "False"
            )
        )
        
        questions.append(
            Question(
                text: "Why is the burden on you to set the agenda and overall plan with your manager 1 on 1s?",
                options: [
                    Question.Option(id: "Your manager is not a mind reader. Only you truly know your own needs"),
                    Question.Option(id: "Your manager is likely very busy and their mind space is split up among multiple reports. Since you only have 1 manager, you are better positioned to bring focus to the meeting"),
                    Question.Option(id: "Creating plans and direction setting are vital skills for growing in tech"),
                    Question.Option(id: "All of the above")
                ],
                correctAnswer: "All of the above"
            )
        )
        
        questions.append(
            Question(
                text: "True or false: It is better for your career growth to view your manager as being a resource for you instead of you being a resource for your manager.",
                options: [
                    Question.Option(id: "True"),
                    Question.Option(id: "False")
                ],
                correctAnswer: "True"
            )
        )
        
        questions.append(
            Question(
                text: "True or false: A good manager 1 on 1 involves you giving status updates and then waiting for instruction on what to do next.",
                options: [
                    Question.Option(id: "True"),
                    Question.Option(id: "False")
                ],
                correctAnswer: "False"
            )
        )
        
        let lessonId = "meetings-13"
        let completionStatus = UserDefaultUtil.getLessonCompletionStatus(lessonId: lessonId)
        return Lesson(
            id: lessonId,
            type: LessonType.MEETINGS,
            name: "Having The Proper Mentality For Manager 1 on 1s",
            youtubeVideoId: "Ftcwz1I6mIg",
            isCompleted: completionStatus,
            questions: questions
        )
    }
    
    private func makeLesson14() -> Lesson {
        var questions = [Question]()
        questions.append(
            Question(
                text: "True or false: In tech, operating at senior levels means that you are driving more, if not most, of the conversation in your manager 1 on 1s.",
                options: [
                    Question.Option(id: "True"),
                    Question.Option(id: "False")
                ],
                correctAnswer: "True"
            )
        )
        
        questions.append(
            Question(
                text: "Why do senior employees tend to drive more of the conversation in manager 1 on 1 meetings?",
                options: [
                    Question.Option(id: "Because they really like talking"),
                    Question.Option(id: "A mark of seniority is defining your own work, as opposed to someone telling you what to do"),
                    Question.Option(id: "Managers do not have as much to say in meetings with senior reports"),
                    Question.Option(id: "None of the above")
                ],
                correctAnswer: "A mark of seniority is defining your own work, as opposed to someone telling you what to do"
            )
        )

        let lessonId = "meetings-14"
        let completionStatus = UserDefaultUtil.getLessonCompletionStatus(lessonId: lessonId)
        return Lesson(
            id: lessonId,
            type: LessonType.MEETINGS,
            name: "The Manager 1 on 1 Is A Litmus Test For Seniority",
            youtubeVideoId: "X8nxyvydHjg",
            isCompleted: completionStatus,
            questions: questions
        )
    }
    
    private func makeLesson15() -> Lesson {
        var questions = [Question]()
        questions.append(
            Question(
                text: "True or false: Your performance review result should not be a surprise, and the manager 1 on 1 is an instrumental mechanism towards ensuring that.",
                options: [
                    Question.Option(id: "True"),
                    Question.Option(id: "False")
                ],
                correctAnswer: "True"
            )
        )
        
        questions.append(
            Question(
                text: "What are some ways to get the feedback flowing in a manager 1 on 1?",
                options: [
                    Question.Option(id: "Share your wins"),
                    Question.Option(id: "Share an observation about a specific project or other aspect of your work life where you feel like you could improve"),
                    Question.Option(id: "Ask how you are trending overall performance-wise every few months"),
                    Question.Option(id: "All of the above")
                ],
                correctAnswer: "All of the above"
            )
        )
        
        questions.append(
            Question(
                text: "True or false: A simple \"Do you have any feedback for me?\" is a good way to ask for feedback from your manager.",
                options: [
                    Question.Option(id: "True"),
                    Question.Option(id: "False")
                ],
                correctAnswer: "False"
            )
        )

        let lessonId = "meetings-15"
        let completionStatus = UserDefaultUtil.getLessonCompletionStatus(lessonId: lessonId)
        return Lesson(
            id: lessonId,
            type: LessonType.MEETINGS,
            name: "Make Sure To Get This Resource From Your Manager 1 on 1s",
            youtubeVideoId: "SBf9S0B0W3Q",
            isCompleted: completionStatus,
            questions: questions
        )
    }
    
    private func makeLesson16() -> Lesson {
        var questions = [Question]()
        questions.append(
            Question(
                text: "You are feeling burnt out at work. Should you share this with your manager?",
                options: [
                    Question.Option(id: "Yes, they can help decrease your workload and de-stress"),
                    Question.Option(id: "No, sharing this is a sign of weakness. It is on you to figure out how you can work more efficiently")
                ],
                correctAnswer: "Yes, they can help decrease your workload and de-stress"
            )
        )
        
        questions.append(
            Question(
                text: "You feel like you are slower than your other teammates and are afraid that you look bad amongst the team. Should you share this with your manager?",
                options: [
                    Question.Option(id: "Yes, this is a case of imposter syndrome and your manager can help with this"),
                    Question.Option(id: "No, you simply need to work harder to catch up to the rest of your team")
                ],
                correctAnswer: "Yes, this is a case of imposter syndrome and your manager can help with this"
            )
        )
        
        questions.append(
            Question(
                text: "Your dog just died, and you are having a really tough time concentrating at work because of this. Should you share this with your manager?",
                options: [
                    Question.Option(id: "Yes, your manager is responsible for your well-being and should be receptive to your current state"),
                    Question.Option(id: "No, this is a personal issue and you should keep it completely separate from your work life. Hide your pain and prevent your manager from finding out you have a personal issue whatsoever")
                ],
                correctAnswer: "Yes, your manager is responsible for your well-being and should be receptive to your current state"
            )
        )

        let lessonId = "meetings-16"
        let completionStatus = UserDefaultUtil.getLessonCompletionStatus(lessonId: lessonId)
        return Lesson(
            id: lessonId,
            type: LessonType.MEETINGS,
            name: "You Should Be Vulnerable With Your Manager",
            youtubeVideoId: "7ZM7YNKHLy8",
            isCompleted: completionStatus,
            questions: questions
        )
    }
    
    private func makeLesson17() -> Lesson {
        var questions = [Question]()
        questions.append(
            Question(
                text: "Which of these are important things to remember as you are voicing your problems and frustrations?",
                options: [
                    Question.Option(id: "Start off with how the issue makes you feel, making the dialogue more about how negative your experience was"),
                    Question.Option(id: "Avoid placing blame on others"),
                    Question.Option(id: "Talk tentatively using phrases like \"I think\" and \"Maybe\". Acknowledge the fact that you may not have all the answers and the issue may be something that is on you instead of a problem inflicted by another party"),
                    Question.Option(id: "All of the above")
                ],
                correctAnswer: "All of the above"
            )
        )
        
        questions.append(
            Question(
                text: "Is the following a good way to voice a problem: \"I really hate how John thinks about the product. His vision does not make sense, and it will drag down the team. You can tell that he does not have enough experience.\"",
                options: [
                    Question.Option(id: "Yes"),
                    Question.Option(id: "No")
                ],
                correctAnswer: "No"
            )
        )
        
        questions.append(
            Question(
                text: "\"I really hate how John thinks about the product. His vision does not make sense, and it will drag down the team. You can tell that he does not have enough experience.\" - What is wrong with how this frustration is presented?",
                options: [
                    Question.Option(id: "There is no tentative language. The speaker is absolutely confident that John is wrong and that they are right"),
                    Question.Option(id: "It attacks and places blame on John without trying to understand their viewpoint at all"),
                    Question.Option(id: "It does not try to solve the problem, acting as a bridge burner instead of a bridge builder"),
                    Question.Option(id: "All of the above")
                ],
                correctAnswer: "All of the above"
            )
        )

        let lessonId = "meetings-17"
        let completionStatus = UserDefaultUtil.getLessonCompletionStatus(lessonId: lessonId)
        return Lesson(
            id: lessonId,
            type: LessonType.MEETINGS,
            name: "Voicing Your Problems And Frustrations Productively",
            youtubeVideoId: "qWXfT2fiPVE",
            isCompleted: completionStatus,
            questions: questions
        )
    }
}
