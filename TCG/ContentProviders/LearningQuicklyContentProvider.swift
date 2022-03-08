//
//  LearningQuicklyContentProvider.swift
//  TCG
//
//  Created by Alexander Chiou on 2/22/22.
//

import Foundation

struct LearningQuicklyContentProvider {
    
    static func getLessons() -> [Lesson] {
        var lessons: [Lesson] = []
        lessons.append(makeLesson1())
        lessons.append(makeLesson2())
        lessons.append(makeLesson3())
        lessons.append(makeLesson4())
        lessons.append(makeLesson5())
        lessons.append(makeLesson6())
        lessons.append(makeLesson7())
        return lessons
    }
    
    static func makeLesson1() -> Lesson {
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
            type: LessonTag.LEARNING_QUICKLY,
            name: "There Is No Such Thing As A Stupid Question",
            youtubeVideoId: "fVgZBX0yinc",
            isCompleted: completionStatus,
            questions: questions
        )
    }
    
    static func makeLesson2() -> Lesson {
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
            type: LessonTag.LEARNING_QUICKLY,
            name: "Asking Effective Questions That Get Great Answers Quickly",
            youtubeVideoId: "VS75nql2Csg",
            isCompleted: completionStatus,
            questions: questions
        )
    }
    
    static func makeLesson3() -> Lesson {
        var questions = [Question]()
        questions.append(
            Question(
                text: "Is the following a good question: \"What are the best open-source projects to work on?\"",
                options: [
                    Question.Option(id: "Yes"),
                    Question.Option(id: "No")
                ],
                correctAnswer: "No"
            )
        )
        
        questions.append(
            Question(
                text: "\"What are the best open-source projects to work on?\" - How can the asker improve this question?",
                options: [
                    Question.Option(id: "Include context on why they want to work on open-source"),
                    Question.Option(id: "Describe their current experience level working with open-source"),
                    Question.Option(id: "Outline the programming languages and frameworks they are already familiar with"),
                    Question.Option(id: "All of the above")
                ],
                correctAnswer: "All of the above"
            )
        )
        
        questions.append(
            Question(
                text: "Is the following a good question: \"Any Java developers here who have worked on ML?\"",
                options: [
                    Question.Option(id: "Yes"),
                    Question.Option(id: "No")
                ],
                correctAnswer: "No"
            )
        )

        questions.append(
            Question(
                text: "\"Any Java developers here who have worked on ML?\" - Why is this not a good question?",
                options: [
                    Question.Option(id: "Java is not a good language for machine learning"),
                    Question.Option(id: "The true objective of the asker is not there"),
                    Question.Option(id: "It should have a greeting like \"Hello\" to be polite"),
                    Question.Option(id: "All of the above")
                ],
                correctAnswer: "The true objective of the asker is not there"
            )
        )
        
        questions.append(
            Question(
                text: "Is the following a good question: \"Does anybody know what the front-end engineering interview for Amazon looks like?\"",
                options: [
                    Question.Option(id: "Yes"),
                    Question.Option(id: "No")
                ],
                correctAnswer: "No"
            )
        )
        
        questions.append(
            Question(
                text: "\"Does anybody know what the front-end engineering interview for Amazon looks like?\" - How can the asker improve this question?",
                options: [
                    Question.Option(id: "Include what they have found out through Glassdoor and their recruiter"),
                    Question.Option(id: "Reframe this question to have their true intention, which is that they have this interview coming up and would like help with it. They can then add information like when the interview is and the office/team it is for"),
                    Question.Option(id: "Preemptively thank those who take the time to answer this question as sharing interview material is dicey due to NDA"),
                    Question.Option(id: "All of the above")
                ],
                correctAnswer: "All of the above"
            )
        )
        
        questions.append(
            Question(
                text: "Is the following a good question: \"Can someone recommend me resources for blockchain development?\"",
                options: [
                    Question.Option(id: "Yes"),
                    Question.Option(id: "No")
                ],
                correctAnswer: "No"
            )
        )
        
        questions.append(
            Question(
                text: "\"Can someone recommend me resources for blockchain development?\" - How can the asker improve this question?",
                options: [
                    Question.Option(id: "Explain why they are interested in blockchain"),
                    Question.Option(id: "Include the preferred way they like to learn (video, article, etc)"),
                    Question.Option(id: "Describe what kind of product they are looking to build with blockchain"),
                    Question.Option(id: "All of the above")
                ],
                correctAnswer: "All of the above"
            )
        )
        
        questions.append(
            Question(
                text: "Is the following a good question: \"Is there anybody here who can refer me into FAANG?\"",
                options: [
                    Question.Option(id: "Yes"),
                    Question.Option(id: "No")
                ],
                correctAnswer: "No"
            )
        )
        
        
        questions.append(
            Question(
                text: "\"Is there anybody here who can refer me into FAANG?\" - Why is this not a good question?",
                options: [
                    Question.Option(id: "It is very unlikely somebody is willing to do such a massive favor for someone they do not know"),
                    Question.Option(id: "Everybody wants to get into FAANG. It is hard to empathize with the asker, especially as they have not described any difficulties they have faced trying to get into FAANG"),
                    Question.Option(id: "For an ask this large, it should definitely have a preemptive thanks"),
                    Question.Option(id: "All of the above")
                ],
                correctAnswer: "All of the above"
            )
        )
        
        let lessonId = "learning-quickly-3"
        let completionStatus = UserDefaultUtil.getLessonCompletionStatus(lessonId: lessonId)
        return Lesson(
            id: lessonId,
            type: LessonTag.LEARNING_QUICKLY,
            name: "Bad Question vs. Good Question Example",
            youtubeVideoId: "24CGlaL5bXo",
            isCompleted: completionStatus,
            questions: questions
        )
    }
    
    static func makeLesson4() -> Lesson {
        var questions = [Question]()
        questions.append(
            Question(
                text: "True or false: If you ask for help on a coding issue, link the entire repo of the codebase you are working on to be safe. This guarantees that helpers have all the context they need.",
                options: [
                    Question.Option(id: "True"),
                    Question.Option(id: "False")
                ],
                correctAnswer: "False"
            )
        )
        
        questions.append(
            Question(
                text: "What can you do to really sharpen your question before asking it?",
                options: [
                    Question.Option(id: "Spend a couple extra hours trying to solve it yourself just to make extra sure you are blocked on a truly difficult issue"),
                    Question.Option(id: "Do something else, so you can wait for someone else to hit your same issue and see how they solve it"),
                    Question.Option(id: "Anticipate the questions you will get in response to your question and solve for those preemptively"),
                    Question.Option(id: "None of the above")
                ],
                correctAnswer: "Anticipate the questions you will get in response to your question and solve for those preemptively"
            )
        )
        
        questions.append(
            Question(
                text: "\"I am having trouble getting a button to appear above an image in my webpage. Can someone help with this?\" - Which of the following are questions that should have been anticipated beforehand for this question?",
                options: [
                    Question.Option(id: "What framework (React, Vue, etc) are you using to build your webpage?"),
                    Question.Option(id: "What have you tried already to solve this problem?"),
                    Question.Option(id: "Have you gone through the first couple StackOverflow results talking about this same problem?"),
                    Question.Option(id: "All of the above")
                ],
                correctAnswer: "All of the above"
            )
        )
        
        let lessonId = "learning-quickly-4"
        let completionStatus = UserDefaultUtil.getLessonCompletionStatus(lessonId: lessonId)
        return Lesson(
            id: lessonId,
            type: LessonTag.LEARNING_QUICKLY,
            name: "Make It Easy For You To Receive Help",
            youtubeVideoId: "rfSy_MlMyfI",
            isCompleted: completionStatus,
            questions: questions
        )
    }
    
    static func makeLesson5() -> Lesson {
        var questions = [Question]()
        questions.append(
            Question(
                text: "What is the best way to learn a codebase?",
                options: [
                    Question.Option(id: "Reading as much documentation as you can"),
                    Question.Option(id: "Just making some code changes in it and seeing what happens"),
                    Question.Option(id: "Following 5-10 tutorials to build various clone projects with the language the codebase is written in"),
                    Question.Option(id: "None of the above")
                ],
                correctAnswer: "Just making some code changes in it and seeing what happens"
            )
        )
        
        questions.append(
            Question(
                text: "True or false: In software, experimenting and making changes is cheap, so a great way to learn is by trying a lot of things and seeing what happens, even if you do not fully understand the overall codebase yet.",
                options: [
                    Question.Option(id: "True"),
                    Question.Option(id: "False")
                ],
                correctAnswer: "True"
            )
        )
        
        questions.append(
            Question(
                text: "Why is structured learning like tutorials and courses not effective for actually learning a codebase?",
                options: [
                    Question.Option(id: "The good ones are too expensive"),
                    Question.Option(id: "They take too long"),
                    Question.Option(id: "They do not actually prepare you for the end goal, taking you away from the core concept of learning by doing"),
                    Question.Option(id: "None of the above")
                ],
                correctAnswer: "They do not actually prepare you for the end goal, taking you away from the core concept of learning by doing"
            )
        )
        
        questions.append(
            Question(
                text: "True or false: Before you jump into a codebase, you should ideally get a certificate in that tech stack before working with it.",
                options: [
                    Question.Option(id: "True"),
                    Question.Option(id: "False")
                ],
                correctAnswer: "False"
            )
        )
        
        questions.append(
            Question(
                text: "Which of these is a good way to learn a codebase with your first code changes within it?",
                options: [
                    Question.Option(id: "Pair program with someone and have them tell you exactly what to do"),
                    Question.Option(id: "Submit a pull request with a small to medium amount of code changes, even if you know it is far from perfect"),
                    Question.Option(id: "Try to build a new very large and complex feature"),
                    Question.Option(id: "None of the above")
                ],
                correctAnswer: "Submit a pull request with a small to medium amount of code changes, even if you know it is far from perfect"
            )
        )
        
        questions.append(
            Question(
                text: "True or false: Breaking something locally is an effective way to learn a codebase.",
                options: [
                    Question.Option(id: "True"),
                    Question.Option(id: "False")
                ],
                correctAnswer: "True"
            )
        )
        
        let lessonId = "learning-quickly-5"
        let completionStatus = UserDefaultUtil.getLessonCompletionStatus(lessonId: lessonId)
        return Lesson(
            id: lessonId,
            type: LessonTag.LEARNING_QUICKLY,
            name: "How To Learn A New Codebase Fast",
            youtubeVideoId: "QLCq91qrMC0",
            isCompleted: completionStatus,
            questions: questions
        )
    }
    
    static func makeLesson6() -> Lesson {
        var questions = [Question]()
        questions.append(
            Question(
                text: "True or false: If you get a piece of feedback, you should initially assume good intent and that it is correct.",
                options: [
                    Question.Option(id: "True"),
                    Question.Option(id: "False")
                ],
                correctAnswer: "True"
            )
        )
        
        questions.append(
            Question(
                text: "What should be your immediate reaction when you get a piece of constructive feedback?",
                options: [
                    Question.Option(id: "Be defensive and ask questions to make the giver validate the feedback"),
                    Question.Option(id: "Provide a piece of constructive criticism of the giver in return"),
                    Question.Option(id: "Thank the giver, as they are likely feeling awkward themselves"),
                    Question.Option(id: "None of the above")
                ],
                correctAnswer: "Thank the giver, as they are likely feeling awkward themselves"
            )
        )
        
        questions.append(
            Question(
                text: "True or false: If you get feedback that you do not believe is 100% correct, you should just ignore it.",
                options: [
                    Question.Option(id: "True"),
                    Question.Option(id: "False")
                ],
                correctAnswer: "False"
            )
        )
        
        questions.append(
            Question(
                text: "Which of the following are good things to do when you get a piece of feedback that you genuinely believe is not constructive and is phrased in a harmful way?",
                options: [
                    Question.Option(id: "Talk to the superior of the feedback giver"),
                    Question.Option(id: "Have a crucial, honest conversation with the feedback giver and explain how you feel"),
                    Question.Option(id: "Be vulnerable and share your feelings and perspective with people you trust"),
                    Question.Option(id: "All of the above")
                ],
                correctAnswer: "All of the above"
            )
        )
        
        questions.append(
            Question(
                text: "True or false: One of the most straightforward ways to grow in tech is to just immediately incorporate every piece of feedback you get.",
                options: [
                    Question.Option(id: "True"),
                    Question.Option(id: "False")
                ],
                correctAnswer: "True"
            )
        )
        
        let lessonId = "learning-quickly-6"
        let completionStatus = UserDefaultUtil.getLessonCompletionStatus(lessonId: lessonId)
        return Lesson(
            id: lessonId,
            type: LessonTag.LEARNING_QUICKLY,
            name: "Feedback Is A Gift",
            youtubeVideoId: "ZfZzJ6C235s",
            isCompleted: completionStatus,
            questions: questions
        )
    }
    
    static func makeLesson7() -> Lesson {
        var questions = [Question]()
        questions.append(
            Question(
                text: "True or false: The best way to level up is to join a team where you are the absolute strongest and know more than everybody. This way, you will get made the lead by default.",
                options: [
                    Question.Option(id: "True"),
                    Question.Option(id: "False")
                ],
                correctAnswer: "False"
            )
        )
        
        questions.append(
            Question(
                text: "Why is it good to be the dumbest person in the room?",
                options: [
                    Question.Option(id: "You will get more feedback"),
                    Question.Option(id: "You have more people to learn from"),
                    Question.Option(id: "Embracing the struggle and being uncomfortable motivates you to become better"),
                    Question.Option(id: "All of the above")
                ],
                correctAnswer: "All of the above"
            )
        )
        
        questions.append(
            Question(
                text: "How can you really level up your skills building within a tech stack you are already familiar with?",
                options: [
                    Question.Option(id: "Refactor all the code you have ever written"),
                    Question.Option(id: "Incorporate blockchain"),
                    Question.Option(id: "Build a product with a higher level of quality and fidelity than you have ever done, handling extreme edge cases and scale"),
                    Question.Option(id: "None of the above")
                ],
                correctAnswer: "Build a product with a higher level of quality and fidelity than you have ever done, handling extreme edge cases and scale"
            )
        )
        
        let lessonId = "learning-quickly-7"
        let completionStatus = UserDefaultUtil.getLessonCompletionStatus(lessonId: lessonId)
        return Lesson(
            id: lessonId,
            type: LessonTag.LEARNING_QUICKLY,
            name: "Finding The Best Environment For Learning",
            youtubeVideoId: "1jJf0ehQ7Fo",
            isCompleted: completionStatus,
            questions: questions
        )
    }
}
