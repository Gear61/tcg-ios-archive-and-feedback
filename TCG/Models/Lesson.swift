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
    var youtubeVideoId: String
    var questions: [Question]
    
    @Published var isCompleted: Bool
    
    init(
        id: String,
        name: String,
        youtubeVideoId: String,
        isCompleted: Bool,
        questions: [Question]
    ) {
        self.id = id
        self.name = name
        self.youtubeVideoId = youtubeVideoId
        self.isCompleted = isCompleted
        self.questions = questions
    }
    
    func getYouTubeUrl() -> String {
        return "https://www.youtube.com/embed/" + youtubeVideoId
    }
}
