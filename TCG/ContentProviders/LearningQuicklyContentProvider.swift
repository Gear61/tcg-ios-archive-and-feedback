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
        
        let lessonId = "learning-quickly-1"
        let completionStatus = UserDefaultUtil.getLessonCompletionStatus(lessonId: lessonId)
        return Lesson(
            id: lessonId,
            type: LessonType.LEARNING_QUICKLY,
            name: "Understanding The Resume Review Process And Formats",
            youtubeVideoId: "MByD2CTwfmM",
            isCompleted: completionStatus,
            questions: questions
        )
    }
}
