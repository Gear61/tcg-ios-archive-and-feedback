//
//  Lesson.swift
//  TCG
//
//  Created by Alexander Chiou on 1/10/22.
//

import Foundation

class Lesson: Identifiable, ObservableObject, Hashable {
    
    var id: String
    var tags: Set<LessonTag>
    var name: String
    var youtubeVideoId: String
    var questions: [Question]
    
    @Published var isCompleted: Bool
    
    init(
        id: String,
        tags: Set<LessonTag>,
        name: String,
        youtubeVideoId: String,
        isCompleted: Bool,
        questions: [Question]
    ) {
        self.id = id
        self.tags = tags
        self.name = name
        self.youtubeVideoId = youtubeVideoId
        self.isCompleted = isCompleted
        self.questions = questions
    }

    func getYouTubeEmbedUrl() -> String {
        return "https://www.youtube.com/embed/" + youtubeVideoId
    }
    
    func getYouTubeThumbnailUrl() -> String {
        return "https://img.youtube.com/vi/" + youtubeVideoId + "/maxresdefault.jpg"
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(ObjectIdentifier(self))
    }
    
    static func == (lhs: Lesson, rhs: Lesson) -> Bool {
        return lhs.id == rhs.id
    }
}
