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
        lessons.append(makeLesson2())
    }
    
    private func makeLesson1() -> Lesson {
        var questions = [Question]()
        questions.append(
            Question(
                text: "What is a good amount of time to be stuck before asking a question?",
                options: [
                    Question.Option(id: "1 - 2 minutes"),
                    Question.Option(id: "15 - 20 minutes"),
                    Question.Option(id: "3 - 4 hours"),
                    Question.Option(id: "1 - 2 days")
                ],
                correctAnswer: "15 - 20 minutes"
            )
        )
        
        questions.append(
            Question(
                text: "True or false: To prove that you are a good engineer when joining a new team, you should ask as few questions as possible.",
                options: [
                    Question.Option(id: "True"),
                    Question.Option(id: "False")
                ],
                correctAnswer: "False"
            )
        )
        
        questions.append(
            Question(
                text: "What is the optimal amount of questions to ask per week as a junior engineer?",
                options: [
                    Question.Option(id: "1 - 2"),
                    Question.Option(id: "3 - 5"),
                    Question.Option(id: "10 - 15"),
                    Question.Option(id: "None of the above")
                ],
                correctAnswer: "None of the above"
            )
        )
        
        questions.append(
            Question(
                text: "True or false: Asking a lot of questions can help other people in your company and increase your respect within your team.",
                options: [
                    Question.Option(id: "True"),
                    Question.Option(id: "False")
                ],
                correctAnswer: "True"
            )
        )
        
        questions.append(
            Question(
                text: "What are the benefits of asking a lot of good questions?",
                options: [
                    Question.Option(id: "You learn faster"),
                    Question.Option(id: "You help other people who have the same question"),
                    Question.Option(id: "You are creating a useful piece of content via your question and answer pair"),
                    Question.Option(id: "All of the above")
                ],
                correctAnswer: "All of the above"
            )
        )
        
        let lessonId = "learning-quickly-1"
        let completionStatus = UserDefaultUtil.getLessonCompletionStatus(lessonId: lessonId)
        return Lesson(
            id: lessonId,
            type: LessonType.LEARNING_QUICKLY,
            name: "There Is No Such Thing As A Stupid Question",
            youtubeVideoId: "fVgZBX0yinc",
            isCompleted: completionStatus,
            questions: questions
        )
    }
    
    private func makeLesson2() -> Lesson {
        var questions = [Question]()
        questions.append(
            Question(
                text: "What are some things you can do to improve your question?",
                options: [
                    Question.Option(id: "Do a Google search for it and include what you were able or unable to get from them"),
                    Question.Option(id: "Describe what you have already tried to solve your issue"),
                    Question.Option(id: "Preemptively thank anybody who takes the time to read and answer your question"),
                    Question.Option(id: "All of the above")
                ],
                correctAnswer: "All of the above"
            )
        )
        
        questions.append(
            Question(
                text: "True or false: Ideally, your question takes less time to answer than it took for you to ask the question.",
                options: [
                    Question.Option(id: "True"),
                    Question.Option(id: "False")
                ],
                correctAnswer: "True"
            )
        )
        
        questions.append(
            Question(
                text: "What is the core operating principle behind asking and answering questions?",
                options: [
                    Question.Option(id: "Use StackOverflow"),
                    Question.Option(id: "Attach every single line of relevant code you are working with if you are asking a software question"),
                    Question.Option(id: "Questions are an exchange of time"),
                    Question.Option(id: "None of the above")
                ],
                correctAnswer: "Questions are an exchange of time"
            )
        )
        
        questions.append(
            Question(
                text: "True or false: In order to be polite, you should preface your question with a simple greeting like \"Hello\". After the potential answerer responds, then you can ask your question.",
                options: [
                    Question.Option(id: "True"),
                    Question.Option(id: "False")
                ],
                correctAnswer: "False"
            )
        )
        
        questions.append(
            Question(
                text: "Why do you need to attach a lot of context and be as specific as possible asking questions in tech?",
                options: [
                    Question.Option(id: "Longer questions are better"),
                    Question.Option(id: "It filters out the people who are not serious about answering your question"),
                    Question.Option(id: "Tech is an effectively infinite space, so this narrows down the problem space for answerers"),
                    Question.Option(id: "All of the above")
                ],
                correctAnswer: "Tech is an effectively infinite space, so this narrows down the problem space for answerers"
            )
        )
        
        let lessonId = "learning-quickly-2"
        let completionStatus = UserDefaultUtil.getLessonCompletionStatus(lessonId: lessonId)
        return Lesson(
            id: lessonId,
            type: LessonType.LEARNING_QUICKLY,
            name: "Asking Effective Questions That Get Great Answers Quickly",
            youtubeVideoId: "VS75nql2Csg",
            isCompleted: completionStatus,
            questions: questions
        )
    }
}
