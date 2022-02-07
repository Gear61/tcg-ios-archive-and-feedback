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
        let completionStatus = UserDefaultUtil.getLessonCompletionStatus(lessonId: lessonId)
        return Lesson(
            id: lessonId,
            type: LessonType.RESUME,
            name: "Understanding The Resume Review Process And Formats",
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
        let completionStatus = UserDefaultUtil.getLessonCompletionStatus(lessonId: lessonId)
        return Lesson(
            id: lessonId,
            type: LessonType.RESUME,
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
                text: "What's the best way to juice up your resume after you have gotten the basics?",
                options: [
                    Question.Option(id: "Certifications"),
                    Question.Option(id: "Competitive Programming"),
                    Question.Option(id: "Serious Side Projects"),
                    Question.Option(id: "Building Clones Of Popular Products")
                ],
                correctAnswer: "Serious Side Projects"
            )
        )
        
        questions.append(
            Question(
                text: "True or false: As long as you can code and have a polished resume, that is enough to comfortably find a job.",
                options: [
                    Question.Option(id: "True"),
                    Question.Option(id: "False")
                ],
                correctAnswer: "False"
            )
        )
        
        questions.append(
            Question(
                text: "Why are side projects such an effective tactic?",
                options: [
                    Question.Option(id: "There's a lot of technlogy now that makes publicly deploying and sharing projects very easy"),
                    Question.Option(id: "They build up important non-coding skills that make you a more complete engineer"),
                    Question.Option(id: "They're extremely cheap and in most cases, free"),
                    Question.Option(id: "All of the above")
                ],
                correctAnswer: "All of the above"
            )
        )
        
        questions.append(
            Question(
                text: "True or false: You can get something extremely close to work experience without having a formal job, all from the comfort of your own home.",
                options: [
                    Question.Option(id: "True"),
                    Question.Option(id: "False")
                ],
                correctAnswer: "True"
            )
        )
        
        let lessonId = "resume-3"
        let completionStatus = UserDefaultUtil.getLessonCompletionStatus(lessonId: lessonId)
        return Lesson(
            id: lessonId,
            type: LessonType.RESUME,
            name: "How To Supercharge Your Resume As A Junior Engineer",
            youtubeVideoId: "9Wb-gHEO9ug",
            isCompleted: completionStatus,
            questions: questions
        )
    }
}
