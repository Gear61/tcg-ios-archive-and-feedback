//
//  HomepageView.swift
//  TCG
//
//  Created by Alexander Chiou on 1/10/22.
//

import SwiftUI

struct BrowseLessonsView: View {
    
    var lessonTypes = UserDefaultUtil.getContentOrder()
    
    @State private var selection: Int = 0
    
    var body: some View {
        ScrollView {
            VStack(spacing: 0) {
                ForEach(lessonTypes) { lessonType in
                    LessonGalleryView(lessonType: lessonType)
                }
            }
        }
    }
}
