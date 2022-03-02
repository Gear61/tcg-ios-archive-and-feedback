//
//  UserDefaultManager.swift
//  TCG
//
//  Created by Alexander Chiou on 1/18/22.
//

import Foundation

struct UserDefaultUtil {
    
    static let NUM_APP_OPENS_KEY = "num-app-opens"
    static let OPENS_FOR_RATING_UPSELL = 5
    
    static let HAS_SEEN_SLIDESHOW_KEY = "has-seen-slideshow"
    static let CONTENT_ORDER_KEY = "content-order"

    static func markLessonCompleted(lessonId: String) {
        UserDefaults.standard.set(true, forKey: lessonId)
    }
    
    static func getLessonCompletionStatus(lessonId: String) -> Bool {
        return UserDefaults.standard.bool(forKey: lessonId)
    }
    
    static func logAppOpenAndCheckForRatingUpsell() -> Bool {
        let numAppOpens = UserDefaults.standard.integer(forKey: NUM_APP_OPENS_KEY) + 1
        UserDefaults.standard.set(numAppOpens, forKey: NUM_APP_OPENS_KEY)
        return numAppOpens == OPENS_FOR_RATING_UPSELL
    }
    
    static func hasSeenSlideshow() -> Bool {
        return UserDefaults.standard.bool(forKey: HAS_SEEN_SLIDESHOW_KEY)
    }
    
    static func getAppState() -> AppState {
        if (UserDefaults.standard.bool(forKey: HAS_SEEN_SLIDESHOW_KEY)) {
            return AppState.ShowingHomepage
        } else {
            return AppState.WatchingSlideshow
        }
    }
    
    static func markSlideshowAsSeen() {
        UserDefaults.standard.set(true, forKey: HAS_SEEN_SLIDESHOW_KEY)
    }
    
    static func getContentOrder() -> [LessonType] {
        let fromPrefs: [String] = (UserDefaults.standard.stringArray(forKey: CONTENT_ORDER_KEY)) ?? []
        let defaultTypes = [
            LessonType.INTERVIEWING,
            LessonType.RESUME,
            LessonType.PRODUCTIVITY,
            LessonType.LEARNING_QUICKLY,
            LessonType.PROMOTION,
            LessonType.MEETINGS
        ]
        if (fromPrefs.isEmpty) {
            return defaultTypes
        } else {
            var types: [LessonType] = []
            for type in fromPrefs {
                types.append(LessonType(rawValue: type)!)
            }
            
            for defaultType in defaultTypes {
                if (!types.contains(defaultType)) {
                    types.append(defaultType)
                }
            }
            return types
        }
    }
    
    static func setContentOrder(types: [LessonType]) {
        var typeStrings: [String] = []
        for type in types {
            typeStrings.append(type.rawValue)
        }
        UserDefaults.standard.set(typeStrings, forKey: CONTENT_ORDER_KEY)
    }
}
