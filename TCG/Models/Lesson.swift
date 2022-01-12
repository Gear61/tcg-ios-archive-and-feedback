//
//  Lesson.swift
//  TCG
//
//  Created by Alexander Chiou on 1/10/22.
//

import Foundation

class Lesson: Identifiable, ObservableObject {
    
    var id: String
    var name: String
    var youtubeUrl: String
    var questions: [Question]
    
    @Published var isCompleted: Bool
    
    init(
        id: String,
        name: String,
        youtubeUrl: String,
        isCompleted: Bool,
        questions: [Question]
    ) {
        self.id = id
        self.name = name
        self.youtubeUrl = youtubeUrl
        self.isCompleted = isCompleted
        self.questions = questions
    }
}
