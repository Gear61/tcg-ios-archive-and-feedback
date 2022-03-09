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
        VStack(spacing: 0) {
            ScrollView(showsIndicators: false) {
                VStack() {
                    ForEach(lessonTypes.indices) { index in
                        LessonGalleryView(lessonType: lessonTypes[index])
                            .padding(.top, index == 0 ? 16 : 0)
                            .padding(.bottom, index == lessonTypes.count - 1 ? 16 : 20)
                    }
                }
            }
            Divider()
        }
    }
}
