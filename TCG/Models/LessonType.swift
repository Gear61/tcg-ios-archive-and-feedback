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
    case MEETINGS = "Meetings"
    
    var description: String {
        return self.rawValue
    }
    
    var labelForOrdering: String {
        switch self {
        case .INTERVIEWING:
            return "Acing Interviews"
        case .RESUME:
            return "Writing A Great Resume"
        case .PRODUCTIVITY:
            return "Becoming More Productive"
        case .PROMOTION:
            return "Getting Promoted"
        case .LEARNING_QUICKLY:
            return "Learning Stuff Quickly"
        case .MEETINGS:
            return "Having Effective Meetings"
        }
    }
}

extension LessonType: Identifiable {
    var id: RawValue { rawValue }
}
