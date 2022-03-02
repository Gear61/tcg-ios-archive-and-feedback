//
//  MeetingsLessonProvider.swift
//  TCG
//
//  Created by Alexander Chiou on 3/1/22.
//

import Foundation

class MeetingsContentProvider: ObservableObject {
    
    var lessons: [Lesson]
    
    init() {
        self.lessons = []
    }
}
