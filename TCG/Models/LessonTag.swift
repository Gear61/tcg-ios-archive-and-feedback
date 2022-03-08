//
//  LessonType.swift
//  TCG
//
//  Created by Alexander Chiou on 2/7/22.
//

import Foundation

enum LessonTag: String, CustomStringConvertible, CaseIterable {

    case INTERVIEWING = "Interviewing"
    case RESUME = "Resume"
    case PRODUCTIVITY = "Productivity"
    case PROMOTION = "Promotion"
    case LEARNING_QUICKLY = "Learning Quickly"
    case MEETINGS = "Meetings"
    case ONE_ON_ONE_MEETINGS = "1 on 1 Meetings"
    case BIG_TECH = "Big Tech"
    case DSA = "Data Structures And Algorithms"
    case JUNIOR_ENGINEER = "Junior Engineer"
    case SENIOR_ENGINEER = "Senior Engineer"
    case WORKING_WITH_MANAGER = "Working With Your Manager"
    
    var description: String {
        return self.rawValue
    }
}

extension LessonTag: Identifiable {
    var id: RawValue { rawValue }
}
