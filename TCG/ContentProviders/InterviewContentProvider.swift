//
//  InterviewContentProvider.swift
//  TCG
//
//  Created by Alexander Chiou on 1/12/22.
//

import Foundation

class InterviewContentProvider: ObservableObject {
    
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
                text: "Which of these is the core building block of data structures and algorithms problems?",
                options: [
                    Question.Option(id: "Graphs"),
                    Question.Option(id: "Patterns"),
                    Question.Option(id: "Code"),
                    Question.Option(id: "Trees")
                ],
                correctAnswer: "Patterns"
            )
        )
        
        questions.append(
            Question(
                text: "True or false: The most effective way to be prepared for data structures and algorithms interview problems is to memorize the code of each problem's solution line by line.",
                options: [
                    Question.Option(id: "True"),
                    Question.Option(id: "False")
                ],
                correctAnswer: "False"
            )
        )
        
        questions.append(
            Question(
                text: "Why should you comment your solutions to data structures and algorithms problems?",
                options: [
                    Question.Option(id: "To explain what every line of code does"),
                    Question.Option(id: "Because comments make good code"),
                    Question.Option(id: "It makes the code faster"),
                    Question.Option(id: "To capture the core insight behind the problem and the high-level approach")
                ],
                correctAnswer: "To capture the core insight behind the problem and the high-level approach"
            )
        )
        
        questions.append(
            Question(
                text: "True or false: When you are completely stuck, you should just look at the entire solution in order to learn it.",
                options: [
                    Question.Option(id: "True"),
                    Question.Option(id: "False")
                ],
                correctAnswer: "False"
            )
        )
        
        questions.append(
            Question(
                text: "Why is it healthy to struggle on data stuctures and algorithms problems?",
                options: [
                    Question.Option(id: "That's just how data structures and algorithms are"),
                    Question.Option(id: "You can tell your interviewer about it so they go easier on you"),
                    Question.Option(id: "Because that's when your mind is able to do true learning"),
                    Question.Option(id: "So you can complain about it on LinkedIn")
                ],
                correctAnswer: "Because that's when your mind is able to do true learning"
            )
        )
        
        let lessonId = "interviewing-1"
        let completionStatus = UserDefaultUtil.getLessonCompletionStatus(lessonId: lessonId)
        return Lesson(
            id: lessonId,
            type: "Interviewing",
            name: "Effectively Learning Data Structures And Algorithms",
            youtubeVideoId: "j9FD_Y5JTbw",
            isCompleted: completionStatus,
            questions: questions
        )
    }
    
    private func makeLesson2() -> Lesson {
        var questions = [Question]()
        questions.append(
            Question(
                text: "True or false: You need to care a lot about your Big Tech interview, because passing it will drastically improve your life. The more prominent it is in your brain, the more likely you are to pass it.",
                options: [
                    Question.Option(id: "True"),
                    Question.Option(id: "False")
                ],
                correctAnswer: "False"
            )
        )
        
        questions.append(
            Question(
                text: "How should you view interviews?",
                options: [
                    Question.Option(id: "Make or break opportunities"),
                    Question.Option(id: "Lottery tickets to make a lot more money"),
                    Question.Option(id: "Opportunities to hang out with some talented tech people"),
                    Question.Option(id: "Big tests, similar to final exams in school")
                ],
                correctAnswer: "Opportunities to hang out with some talented tech people"
            )
        )
        
        questions.append(
            Question(
                text: "True or false: Your input is much more important than the output and results you achieve.",
                options: [
                    Question.Option(id: "True"),
                    Question.Option(id: "False")
                ],
                correctAnswer: "True"
            )
        )
        
        questions.append(
            Question(
                text: "Why should you not view interviews as a test?",
                options: [
                    Question.Option(id: "Because they aren't"),
                    Question.Option(id: "To reduce your anxiety and care less about the result"),
                    Question.Option(id: "So they don't remind you of school"),
                    Question.Option(id: "It takes too much mental capacity")
                ],
                correctAnswer: "To reduce your anxiety and care less about the result"
            )
        )
        
        questions.append(
            Question(
                text: "True or false: You shouldn't take any breaks when studying for interviews, because the relentless focus will help you learn the material better.",
                options: [
                    Question.Option(id: "True"),
                    Question.Option(id: "False")
                ],
                correctAnswer: "False"
            )
        )
        
        let lessonId = "interviewing-2"
        let completionStatus = UserDefaultUtil.getLessonCompletionStatus(lessonId: lessonId)
        return Lesson(
            id: lessonId,
            type: "Interviewing",
            name: "Having The Proper Mindset",
            youtubeVideoId: "guxFTl_qIRg",
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
        
        let lessonId = "interviewing-3"
        let completionStatus = UserDefaultUtil.getLessonCompletionStatus(lessonId: lessonId)
        return Lesson(
            id: lessonId,
            type: "Interviewing",
            name: "How To Mentally Prepare For Interviews With Data Structures And Algorithms",
            youtubeVideoId: "LSLyly2GJo4",
            isCompleted: completionStatus,
            questions: questions
        )
    }
    
    private func makeLesson4() -> Lesson {
        var questions = [Question]()
        questions.append(
            Question(
                text: "Why is the following not a good way to remember the solution to 2 Sum?" +
                " \n\ndef twoSum(self, nums, target):" +
                " \n    required = {} " +
                " \n    for i in range(len(nums)):" +
                " \n        if target - nums[i] in required: " +
                " \n            return [required[target - nums[i]],i]" +
                " \n        else:" +
                " \n            required[nums[i]] = i",
                options: [
                    Question.Option(id: "It's written in Python, which isn't a good interviewing language"),
                    Question.Option(id: "The space usage isn't optimal"),
                    Question.Option(id: "It's inefficient; humans don't naturally think in terms of code"),
                    Question.Option(id: "The solution is incomplete")
                ],
                correctAnswer: "It's inefficient; humans don't naturally think in terms of code"
            )
        )
        
        questions.append(
            Question(
                text: "Why is \"Look for the difference and use a HashSet\" a great way to remember the solution to 2 Sum?",
                options: [
                    Question.Option(id: "It is compact"),
                    Question.Option(id: "It trains your brain to convert high-level ideas into implementation"),
                    Question.Option(id: "It captures the core of the problem"),
                    Question.Option(id: "All of the above")
                ],
                correctAnswer: "All of the above"
            )
        )
        
        questions.append(
            Question(
                text: "What more general higher-level learning principle is also exercised alongside the proper mastery of data structures and algorithms problems?",
                options: [
                    Question.Option(id: "Memorization"),
                    Question.Option(id: "Thinking in terms of abstractions"),
                    Question.Option(id: "Perseverance"),
                    Question.Option(id: "Repetition"),
                ],
                correctAnswer: "Thinking in terms of abstractions"
            )
        )
        
        let lessonId = "interviewing-4"
        let completionStatus = UserDefaultUtil.getLessonCompletionStatus(lessonId: lessonId)
        return Lesson(
            id: lessonId,
            type: "Interviewing",
            name: "Truly Mastering A Data Structures And Algorithms Problem - 2 Sum Example",
            youtubeVideoId: "tfqPGGdS8Tk",
            isCompleted: completionStatus,
            questions: questions
        )
    }
    
    private func makeLesson5() -> Lesson {
        var questions = [Question]()
        questions.append(
            Question(
                text: "What is the main extra axis that Big Tech companies will grade interview candidates on?",
                options: [
                    Question.Option(id: "Space complexity"),
                    Question.Option(id: "Cleanliness of the code"),
                    Question.Option(id: "Communication skill"),
                    Question.Option(id: "Programming language choice")
                ],
                correctAnswer: "Communication skill"
            )
        )
        
        questions.append(
            Question(
                text: "True or false: As long as you get the correct, optimal solution, that is enough to pass a Big Tech interview round. ",
                options: [
                    Question.Option(id: "True"),
                    Question.Option(id: "False")
                ],
                correctAnswer: "False"
            )
        )
        
        questions.append(
            Question(
                text: "Why is communication so important in Big Tech companies?",
                options: [
                    Question.Option(id: "There are a lot more stakeholders on every project, making the relevant audience at every point quite large"),
                    Question.Option(id: "Their internal architecture is very custom, making your ability to learn new things much more important"),
                    Question.Option(id: "Software engineers there are expected to be much more well-rounded and not just coding all the time"),
                    Question.Option(id: "All of the above")
                ],
                correctAnswer: "All of the above"
            )
        )
        
        questions.append(
            Question(
                text: "True or false: Big Tech companies don't really care about what specific technologies and programming languages you have worked with.",
                options: [
                    Question.Option(id: "True"),
                    Question.Option(id: "False")
                ],
                correctAnswer: "True"
            )
        )
        
        questions.append(
            Question(
                text: "What's the core high-level asset Big Tech interviewers look for?",
                options: [
                    Question.Option(id: "Years of experience"),
                    Question.Option(id: "Open-source contributions"),
                    Question.Option(id: "Fundamentals"),
                    Question.Option(id: "Usage of modern programming languages and frameworks")
                ],
                correctAnswer: "Fundamentals"
            )
        )
        
        let lessonId = "interviewing-5"
        let completionStatus = UserDefaultUtil.getLessonCompletionStatus(lessonId: lessonId)
        return Lesson(
            id: lessonId,
            type: "Interviewing",
            name: "How Big Tech Judges Interview Performance Differently",
            youtubeVideoId: "TqjiQbyomx4",
            isCompleted: completionStatus,
            questions: questions
        )
    }
}
