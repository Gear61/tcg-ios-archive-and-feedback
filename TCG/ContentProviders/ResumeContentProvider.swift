//
//  ResumeContentProvider.swift
//  TCG
//
//  Created by Alexander Chiou on 1/13/22.
//

import Foundation

class ResumeContentProvider: ObservableObject {
    
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
                text: "True or false: As long as you have basic proficiency with everything on a job posting, you will get an interview for that job.",
                options: [
                    Question.Option(id: "True"),
                    Question.Option(id: "False")
                ],
                correctAnswer: "False"
            )
        )
        
        questions.append(
            Question(
                text: "How much time does a recruiter spend reading a resume, on average?",
                options: [
                    Question.Option(id: "Less than 10 seconds"),
                    Question.Option(id: "Around 2 minutes"),
                    Question.Option(id: "Just 5 minutes"),
                    Question.Option(id: "15+ minutes, resumes are complex and important")
                ],
                correctAnswer: "Less than 10 seconds"
            )
        )
        
        questions.append(
            Question(
                text: "True or false: Your resume should be boring and straightforward, especially with its format.",
                options: [
                    Question.Option(id: "True"),
                    Question.Option(id: "False")
                ],
                correctAnswer: "True"
            )
        )
        
        questions.append(
            Question(
                text: "What's the main reason you should avoid the paid flashy resume formats you find online?",
                options: [
                    Question.Option(id: "To save money"),
                    Question.Option(id: "The format will probably make your resume harder to read"),
                    Question.Option(id: "To protect your privacy"),
                    Question.Option(id: "Other people have probably bought and used those formats already")
                ],
                correctAnswer: "The format will probably make your resume harder to read"
            )
        )
        
        questions.append(
            Question(
                text: "True or false: In order to stand out from other applicants, you can use a very unique format to make your resume more memorable to the recruiter, thus increasing your chances.",
                options: [
                    Question.Option(id: "True"),
                    Question.Option(id: "False")
                ],
                correctAnswer: "False"
            )
        )
        
        let lessonId = "resume-1"
        let completionStatus = UserDefaults.standard.bool(forKey: lessonId)
        return Lesson(
            id: lessonId,
            type: "Resume",
            name: "Understanding The Resume Process And Formats",
            youtubeVideoId: "MByD2CTwfmM",
            isCompleted: completionStatus,
            questions: questions
        )
    }
    
    private func makeLesson2() -> Lesson {
        var questions = [Question]()
        questions.append(
            Question(
                text: "Is this a good resume snippet: \"Worked on the SIVAD system, using Room, AndroidX, Activities, And Java\"",
                options: [
                    Question.Option(id: "Yes"),
                    Question.Option(id: "No")
                ],
                correctAnswer: "No"
            )
        )
        
        questions.append(
            Question(
                text: "How do you make the experience portions of your resume stand out?",
                options: [
                    Question.Option(id: "Mention all the technologies you used"),
                    Question.Option(id: "Highlighting the business impact"),
                    Question.Option(id: "Using flashy formatting"),
                    Question.Option(id: "Point out that you built within cutting edge product spaces like NFTs")
                ],
                correctAnswer: "Highlighting the business impact"
            )
        )
        
        questions.append(
            Question(
                text: "Is this a good resume snippet: \"Champion for unit test coverage for Cool Company's iOS app, increasing it by 20% and reducing the amount of new iOS user issues by 10%\"",
                options: [
                    Question.Option(id: "True"),
                    Question.Option(id: "False")
                ],
                correctAnswer: "True"
            )
        )
        
        questions.append(
            Question(
                text: "What is the main way people struggle with their resumes?",
                options: [
                    Question.Option(id: "Telling instead of showing"),
                    Question.Option(id: "Formatting"),
                    Question.Option(id: "Length"),
                    Question.Option(id: "Getting past the ATS")
                ],
                correctAnswer: "Telling instead of showing"
            )
        )
        
        questions.append(
            Question(
                text: "Is this a good resume snippet: \"Led the JavaScript migration effort with strong communication, architectural, and code quality skills\"",
                options: [
                    Question.Option(id: "Yes"),
                    Question.Option(id: "No")
                ],
                correctAnswer: "No"
            )
        )
        
        let lessonId = "resume-2"
        let completionStatus = UserDefaults.standard.bool(forKey: lessonId)
        return Lesson(
            id: lessonId,
            type: "Resume",
            name: "Explaining Your Experience In A Meaningful Way",
            youtubeVideoId: "sDbK84GEE94",
            isCompleted: completionStatus,
            questions: questions
        )
    }
    
    private func makeLesson3() -> Lesson {
        var questions = [Question]()
        questions.append(
            Question(
                text: "True or false: Interviewing is all about how much you know. As long as you study a lot and understand enough material, you will pass the interview.",
                options: [
                    Question.Option(id: "True"),
                    Question.Option(id: "False")
                ],
                correctAnswer: "False"
            )
        )
        
        questions.append(
            Question(
                text: "For almost everyone, what does the learning curve look like for data structures and algorithms?",
                options: [
                    Question.Option(id: "Linear"),
                    Question.Option(id: "Logarithmic"),
                    Question.Option(id: "Quadratic"),
                    Question.Option(id: "Exponential")
                ],
                correctAnswer: "Exponential"
            )
        )
        
        questions.append(
            Question(
                text: "True or false: It's completely normal and even a good sign when you feel dumb while studying data structures and algorithms.",
                options: [
                    Question.Option(id: "True"),
                    Question.Option(id: "False")
                ],
                correctAnswer: "True"
            )
        )
        
        questions.append(
            Question(
                text: "What's the most important piece when you're learning data structures and algorithms material?",
                options: [
                    Question.Option(id: "How many GitHub green boxes you can get"),
                    Question.Option(id: "The quality of your learning system"),
                    Question.Option(id: "How often you post to LinkedIn about your progress"),
                    Question.Option(id: "The specs of your computer as many problems require a lot of compute and RAM")
                ],
                correctAnswer: "The quality of your learning system"
            )
        )
        
        questions.append(
            Question(
                text: "True or false: If you aren't making progress on data structures and algorithms understanding after 2 months, your mind probably just isn't geared to understand them. At this point, you should be practical and just look for interviews that don't have these kinds of problems.",
                options: [
                    Question.Option(id: "True"),
                    Question.Option(id: "False")
                ],
                correctAnswer: "False"
            )
        )
        
        let lessonId = "resume-3"
        let completionStatus = UserDefaults.standard.bool(forKey: lessonId)
        return Lesson(
            id: lessonId,
            type: "Resume",
            name: "How To Mentally Prepare For Interviews With Data Structures And Algorithms",
            youtubeVideoId: "LSLyly2GJo4",
            isCompleted: completionStatus,
            questions: questions
        )
    }
}

