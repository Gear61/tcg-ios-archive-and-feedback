//
//  LessonType.swift
//  TCG
//
//  Created by Alexander Chiou on 2/7/22.
//

import Foundation

enum LessonType: String, CustomStringConvertible {

    case INTERVIEWING = "Interviewing"
    case RESUME = "Resume"
    case PRODUCTIVITY = "Productivity"
    case PROMOTION = "Promotion"
    case LEARNING_QUICKLY = "Learning Quickly"
    
    var description: String {
        return self.rawValue
    }
}
