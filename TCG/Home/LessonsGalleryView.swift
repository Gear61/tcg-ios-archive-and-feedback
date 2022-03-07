//
//  LessonsGalleryView.swift
//  TCG
//
//  Created by Alexander Chiou on 3/7/22.
//

import SwiftUI

struct LessonsGalleryView: View {
    
    @EnvironmentObject var lessonProvider: LessonProvider
    
    var lessonType: LessonType
    
    var body: some View {
        ScrollView {
            LazyHStack {
            }
        }
    }
}
