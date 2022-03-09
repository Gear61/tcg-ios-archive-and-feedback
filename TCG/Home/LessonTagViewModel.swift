//
//  LessonTagViewModel.swift
//  TCG
//
//  Created by Alexander Chiou on 3/8/22.
//

import Foundation
import UIKit
import Lottie

class LessonTagViewModel: ObservableObject, Hashable {
    
    let START_RED: Float = 0.957
    let END_RED: Float = 0.298
    
    let START_GREEN: Float = 0.263
    let END_GREEN: Float = 0.686
    
    let START_BLUE: Float = 0.212
    let END_BLUE: Float = 0.314
    
    var tag: LessonTag
    var lessons: [Lesson]
    @Published var completionPercent: Int
    
    init(
        tag: LessonTag,
        lessons: [Lesson]
    ) {
        self.tag = tag
        self.lessons = lessons
        
        var numComplete: Float = 0.0
        for lesson in lessons {
            if (lesson.isCompleted) {
                numComplete += 1.0
            }
        }
        let countFloat = Float(lessons.count)
        self.completionPercent = Int((numComplete / countFloat) * 100.0)
    }
    
    func getNumLessonsText() -> String {
        let countString = String(lessons.count)
        return countString + " Lessons"
    }
    
    func getCompletionTextColor() -> UIColor {
        let completionFloat: Float = Float(completionPercent) / 100.0
        let redDelta: Float = END_RED - START_RED
        let greenDelta: Float = END_GREEN - START_GREEN
        let blueDelta: Float = END_BLUE - START_BLUE
        
        return UIColor(
            red: CGFloat(START_RED + (redDelta * completionFloat)),
            green: CGFloat(START_GREEN + (greenDelta * completionFloat)),
            blue: CGFloat(START_BLUE + (blueDelta * completionFloat)),
            alpha: 1.0
        )
    }

    func maybeRefreshCompletion() {
        var numComplete: Float = 0.0
        for lesson in lessons {
            if (lesson.isCompleted) {
                numComplete += 1.0
            }
        }
        let countFloat = Float(lessons.count)
        let freshCompletionPercent = Int((numComplete / countFloat) * 100.0)
        
        if (freshCompletionPercent != self.completionPercent) {
            self.completionPercent = freshCompletionPercent
        }
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(ObjectIdentifier(self))
    }
    
    static func == (lhs: LessonTagViewModel, rhs: LessonTagViewModel) -> Bool {
        return lhs.tag == rhs.tag
    }
}
