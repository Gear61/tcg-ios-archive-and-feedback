//
//  PromotionContentProvider.swift
//  TCG
//
//  Created by Alexander Chiou on 2/7/22.
//

import Foundation

struct PromotionContentProvider {
    
    static func getLessons() -> [Lesson] {
        var lessons: [Lesson] = []
        lessons.append(makeLesson1())
        lessons.append(makeLesson2())
        lessons.append(makeLesson3())
        lessons.append(makeLesson4())
        lessons.append(makeLesson5())
        lessons.append(makeLesson6())
        lessons.append(makeLesson7())
        lessons.append(makeLesson8())
        return lessons
    }
    
    static func makeLesson1() -> Lesson {
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
            type: LessonTag.PROMOTION,
            name: "The One Thing You Need To Know About Promotion In Tech",
            youtubeVideoId: "8a-ZMCGg4rc",
            isCompleted: completionStatus,
            questions: questions
        )
    }
    
    static func makeLesson2() -> Lesson {
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
            type: LessonTag.PROMOTION,
            name: "Understanding The Differences Between Engineering Levels",
            youtubeVideoId: "tdfXpFZriFI",
            isCompleted: completionStatus,
            questions: questions
        )
    }
    
    static func makeLesson3() -> Lesson {
        var questions = [Question]()
        questions.append(
            Question(
                text: "True or false: What is built by a very senior engineer is more important than how they built it.",
                options: [
                    Question.Option(id: "True"),
                    Question.Option(id: "False")
                ],
                correctAnswer: "False"
            )
        )
        
        questions.append(
            Question(
                text: "When observing very senior engineers, what should you look for to properly learn from them?",
                options: [
                    Question.Option(id: "How many lines of code they write"),
                    Question.Option(id: "The number of monitors they have"),
                    Question.Option(id: "The decisions they make and the behaviors they exhibit to achieve impact"),
                    Question.Option(id: "All of the above")
                ],
                correctAnswer: "The decisions they make and the behaviors they exhibit to achieve impact"
            )
        )
        
        questions.append(
            Question(
                text: "True or false: At the top tech companies, the very senior engineers make 5-10x more than their very junior counterparts because they work 5-10x harder than they do.",
                options: [
                    Question.Option(id: "True"),
                    Question.Option(id: "False"),
                ],
                correctAnswer: "False"
            )
        )
        
        questions.append(
            Question(
                text: "Which are good examples of questions you can ask when understanding a very senior engineer's behavior?",
                options: [
                    Question.Option(id: "Why did they choose the specific projects they are building?"),
                    Question.Option(id: "What did they do to get the entire team behind their idea?"),
                    Question.Option(id: "How did they convert the initial idea into a fully functional product?"),
                    Question.Option(id: "All of the above")
                ],
                correctAnswer: "All of the above"
            )
        )
        
        questions.append(
            Question(
                text: "True or false: At the top tech companies, you are told less and less what to do as you grow more senior, working on more ambiguous projects while having greater freedom to choose what you work on.",
                options: [
                    Question.Option(id: "True"),
                    Question.Option(id: "False"),
                ],
                correctAnswer: "True"
            )
        )
        
        let lessonId = "promotion-3"
        let completionStatus = UserDefaultUtil.getLessonCompletionStatus(lessonId: lessonId)
        return Lesson(
            id: lessonId,
            type: LessonTag.PROMOTION,
            name: "How To Learn From The Rockstar Engineers You Work With",
            youtubeVideoId: "wgCDDE_WAJ8",
            isCompleted: completionStatus,
            questions: questions
        )
    }
    
    static func makeLesson4() -> Lesson {
        var questions = [Question]()
        questions.append(
            Question(
                text: "What's the main change in expectations when growing into senior engineering levels?",
                options: [
                    Question.Option(id: "You need to become full-stack instead of only knowing 1 thing"),
                    Question.Option(id: "Your proficiency in coding becomes far less important"),
                    Question.Option(id: "You need to spend more time in meetings"),
                    Question.Option(id: "All of the above")
                ],
                correctAnswer: "Your proficiency in coding becomes far less important"
            )
        )
        
        questions.append(
            Question(
                text: "True or false: Hustling (i.e. working extremely hard) is a common, healthy way to get promoted.",
                options: [
                    Question.Option(id: "True"),
                    Question.Option(id: "False")
                ],
                correctAnswer: "False"
            )
        )
        
        questions.append(
            Question(
                text: "Why is it bad if you are able to get promoted to senior levels through sheer ultra-hard work and very high raw productivity?",
                options: [
                    Question.Option(id: "It is not sustainable; you will eventually burn out"),
                    Question.Option(id: "It creates a very awkward situation once you start missing expectations, and you are likely to be put on a PIP or let go"),
                    Question.Option(id: "You are not truly operating at the next level doing this"),
                    Question.Option(id: "All of the above")
                ],
                correctAnswer: "All of the above"
            )
        )
        
        let lessonId = "promotion-4"
        let completionStatus = UserDefaultUtil.getLessonCompletionStatus(lessonId: lessonId)
        return Lesson(
            id: lessonId,
            type: LessonTag.PROMOTION,
            name: "Junior Engineers, Avoid This Fake Growth Trap",
            youtubeVideoId: "6ss9oQWn2K8",
            isCompleted: completionStatus,
            questions: questions
        )
    }
    
    static func makeLesson5() -> Lesson {
        var questions = [Question]()
        questions.append(
            Question(
                text: "What does additive value look like for a software engineer?",
                options: [
                    Question.Option(id: "Code that meets the requirements of a fairly well-defined problem"),
                    Question.Option(id: "Work that is only directly applicable to 1 person in the company, the person doing it"),
                    Question.Option(id: "A one-off implementation on a project"),
                    Question.Option(id: "All of the above")
                ],
                correctAnswer: "All of the above"
            )
        )
        
        questions.append(
            Question(
                text: "What\'s the main metric used to evaluate engineers for promotion and their overall seniority?",
                options: [
                    Question.Option(id: "Years of experience at the company and overall"),
                    Question.Option(id: "Lines of code written"),
                    Question.Option(id: "Scope"),
                    Question.Option(id: "Hours worked")
                ],
                correctAnswer: "Scope"
            )
        )
        
        questions.append(
            Question(
                text: "How does a person's scope become larger?",
                options: [
                    Question.Option(id: "They have more meetings with company executives"),
                    Question.Option(id: "More decisions need to be approved by them"),
                    Question.Option(id: "Their work has a positive impact on more employees within the company"),
                    Question.Option(id: "All of the above")
                ],
                correctAnswer: "Their work has a positive impact on more employees within the company"
            )
        )
        
        questions.append(
            Question(
                text: "What kind of value is the following: Creating a team-wide initiative to write more unit tests, organizing regular hackathons to write hundreds of tests at once alongside creating a dashboard to measure which tests catch the most bugs",
                options: [
                    Question.Option(id: "Additive value"),
                    Question.Option(id: "Multiplicative value")
                ],
                correctAnswer: "Multiplicative value"
            )
        )
        
        questions.append(
            Question(
                text: "What kind of value is the following: Helping the company's ambitious hiring goal for web engineers by interviewing dozens of React developers in just a few weeks",
                options: [
                    Question.Option(id: "Additive value"),
                    Question.Option(id: "Multiplicative value")
                ],
                correctAnswer: "Additive value"
            )
        )
        
        questions.append(
            Question(
                text: "What kind of value is the following: Taking an incredibly vague product idea and refining it into a well-defined product spec by bringing together dozens of engineers, product managers, data scientists, and designers and getting alignment on what the value proposition is and how that manifests as a product experience",
                options: [
                    Question.Option(id: "Additive value"),
                    Question.Option(id: "Multiplicative value")
                ],
                correctAnswer: "Multiplicative value"
            )
        )
        
        questions.append(
            Question(
                text: "What kind of value is the following: Building out the iOS portion of adding Twitter login to onboarding flow for your company's core app after getting high-quality mocks and requirements for it",
                options: [
                    Question.Option(id: "Additive value"),
                    Question.Option(id: "Multiplicative value")
                ],
                correctAnswer: "Additive value"
            )
        )
        
        let lessonId = "promotion-5"
        let completionStatus = UserDefaultUtil.getLessonCompletionStatus(lessonId: lessonId)
        return Lesson(
            id: lessonId,
            type: LessonTag.PROMOTION,
            name: "This Is How Engineers Are Measured For Promotion",
            youtubeVideoId: "nHwHnNwN6to",
            isCompleted: completionStatus,
            questions: questions
        )
    }
    
    static func makeLesson6() -> Lesson {
        var questions = [Question]()
        questions.append(
            Question(
                text: "Which of the following is the resource needed for promotion that many engineers don\'t understand or even realize exists, particularly more junior ones?",
                options: [
                    Question.Option(id: "Scroll performance"),
                    Question.Option(id: "Social capital"),
                    Question.Option(id: "SLAs"),
                    Question.Option(id: "None of the above")
                ],
                correctAnswer: "Social capital"
            )
        )
        
        questions.append(
            Question(
                text: "True or false: When you are onboarding as a software engineer, the one and only thing that matters is your ability to understand the codebase and extend it.",
                options: [
                    Question.Option(id: "True"),
                    Question.Option(id: "False")
                ],
                correctAnswer: "False"
            )
        )
        
        questions.append(
            Question(
                text: "Why is social capital important for senior engineers?",
                options: [
                    Question.Option(id: "It is necessary for pushing big decisions and overall leadership"),
                    Question.Option(id: "It allows them to not be blamed when things go poorly, like during a service outage"),
                    Question.Option(id: "It lowers their chances of being cut during lay-offs"),
                    Question.Option(id: "All of the above")
                ],
                correctAnswer: "It is necessary for pushing big decisions and overall leadership"
            )
        )
        
        let lessonId = "promotion-6"
        let completionStatus = UserDefaultUtil.getLessonCompletionStatus(lessonId: lessonId)
        return Lesson(
            id: lessonId,
            type: LessonTag.PROMOTION,
            name: "The Resource You Need For Promotion That Few Understand",
            youtubeVideoId: "xDKjrf-tpZ4",
            isCompleted: completionStatus,
            questions: questions
        )
    }
    
    static func makeLesson7() -> Lesson {
        var questions = [Question]()
        questions.append(
            Question(
                text: "Which of the following is a great way to increase your scope?",
                options: [
                    Question.Option(id: "Attending more meetings"),
                    Question.Option(id: "Identifying and solving new problems"),
                    Question.Option(id: "Writing more code"),
                    Question.Option(id: "All of the above")
                ],
                correctAnswer: "Identifying and solving new problems"
            )
        )
        
        questions.append(
            Question(
                text: "True or false: It is good to work in a company where there are constantly too many problems to solve.",
                options: [
                    Question.Option(id: "True"),
                    Question.Option(id: "False")
                ],
                correctAnswer: "True"
            )
        )
        
        questions.append(
            Question(
                text: "Why is there always a plentiful supply of problems to solve in high-growth tech companies?",
                options: [
                    Question.Option(id: "They build products with rough quality, so there are always bugs to fix"),
                    Question.Option(id: "They do not hire enough people, so not all the necessary work can get done"),
                    Question.Option(id: "Problems naturally crop up as a company grows as what works at a smaller scale often doesn\'t work at a larger one"),
                    Question.Option(id: "All of the above")
                ],
                correctAnswer: "Problems naturally crop up as a company grows as what works at a smaller scale often doesn\'t work at a larger one"
            )
        )
        
        let lessonId = "promotion-7"
        let completionStatus = UserDefaultUtil.getLessonCompletionStatus(lessonId: lessonId)
        return Lesson(
            id: lessonId,
            type: LessonTag.PROMOTION,
            name: "What Makes A Good Growth Environment For Promotion",
            youtubeVideoId: "s3Fq2xzZ8E0",
            isCompleted: completionStatus,
            questions: questions
        )
    }
    
    static func makeLesson8() -> Lesson {
        var questions = [Question]()
        questions.append(
            Question(
                text: "On top of doing the work, what else do you need to do in order to get full credit for what you are doing?",
                options: [
                    Question.Option(id: "Making sure that you have 100% code coverage on whatever code you shipped"),
                    Question.Option(id: "Writing lots of wikis explaining the architecture of your new codebase"),
                    Question.Option(id: "Communicating and selling your work"),
                    Question.Option(id: "None of the above")
                ],
                correctAnswer: "Communicating and selling your work"
            )
        )
        
        questions.append(
            Question(
                text: "True or false: It is bad to give more public status updates for your project as it will come across as looking for attention.",
                options: [
                    Question.Option(id: "True"),
                    Question.Option(id: "False")
                ],
                correctAnswer: "False"
            )
        )
        
        questions.append(
            Question(
                text: "Why should you not feel icky when you are properly broadcasting the status of your project?",
                options: [
                    Question.Option(id: "If your project were truly important, people will want to know how it is going"),
                    Question.Option(id: "You can use it as a mechanism to thank others who have contributed to the project"),
                    Question.Option(id: "People naturally fall out of sync in high-growth tech companies, so good status updates are a crucial alignment mechanism"),
                    Question.Option(id: "All of the above")
                ],
                correctAnswer: "All of the above"
            )
        )
        
        let lessonId = "promotion-8"
        let completionStatus = UserDefaultUtil.getLessonCompletionStatus(lessonId: lessonId)
        return Lesson(
            id: lessonId,
            type: LessonTag.PROMOTION,
            name: "Why Just Doing The Work Isn’t Enough For Promotion",
            youtubeVideoId: "_w0VUTA7z2E",
            isCompleted: completionStatus,
            questions: questions
        )
    }
}
