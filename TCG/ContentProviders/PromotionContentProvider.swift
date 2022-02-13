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
        lessons.append(makeLesson3())
        lessons.append(makeLesson4())
        lessons.append(makeLesson5())
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
    
    private func makeLesson3() -> Lesson {
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
            type: LessonType.PROMOTION,
            name: "How To Learn From The Rockstar Engineers You Work With",
            youtubeVideoId: "wgCDDE_WAJ8",
            isCompleted: completionStatus,
            questions: questions
        )
    }
    
    private func makeLesson4() -> Lesson {
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
                    Question.Option(id: "It is not sustainable; you will eventually burn out."),
                    Question.Option(id: "It creates a very awkward situation once you start missing expectations, and you are likely to be put on a PIP or let go."),
                    Question.Option(id: "You are not truly operating at the next level doing this."),
                    Question.Option(id: "All of the above")
                ],
                correctAnswer: "All of the above"
            )
        )
        
        let lessonId = "promotion-4"
        let completionStatus = UserDefaultUtil.getLessonCompletionStatus(lessonId: lessonId)
        return Lesson(
            id: lessonId,
            type: LessonType.PROMOTION,
            name: "Junior Engineers, Avoid This Fake Growth Trap",
            youtubeVideoId: "6ss9oQWn2K8",
            isCompleted: completionStatus,
            questions: questions
        )
    }
    
    private func makeLesson5() -> Lesson {
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
                text: "What kind of value is the following: Creating a team-wide initiative to write more unit tests, organizing regular hackathons to write hundreds of tests at once alongside creating a dashboard to measure which tests catch the most bugs.",
                options: [
                    Question.Option(id: "Additive value"),
                    Question.Option(id: "Multiplicative value")
                ],
                correctAnswer: "Multiplicative value"
            )
        )
        
        questions.append(
            Question(
                text: "What kind of value is the following: Helping the company's ambitious hiring goal for web engineers by interviewing dozens of React developers in just a few weeks.",
                options: [
                    Question.Option(id: "Additive value"),
                    Question.Option(id: "Multiplicative value")
                ],
                correctAnswer: "Additive value"
            )
        )
        
        questions.append(
            Question(
                text: "What kind of value is the following: Taking an incredibly vague product idea and refining it into a well-defined product spec by bringing together dozens of engineers, product managers, data scientists, and designers and getting alignment on what the value proposition is and how that manifests as a product experience.",
                options: [
                    Question.Option(id: "Additive value"),
                    Question.Option(id: "Multiplicative value")
                ],
                correctAnswer: "Multiplicative value"
            )
        )
        
        questions.append(
            Question(
                text: "What kind of value is the following: Building out the iOS portion of adding Twitter login to onboarding flow for your company's core app after getting high-quality mocks and requirements for it.",
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
            type: LessonType.PROMOTION,
            name: "This Is How Engineers Are Measured For Promotion",
            youtubeVideoId: "nHwHnNwN6to",
            isCompleted: completionStatus,
            questions: questions
        )
    }
}
