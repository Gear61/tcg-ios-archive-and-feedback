//
//  HomepageView.swift
//  TCG
//
//  Created by Alexander Chiou on 1/10/22.
//

import SwiftUI
import PagerTabStripView

struct BrowseLessonsView: View {
    
    var lessonTypes = UserDefaultUtil.getContentOrder()
    
    @State private var selection: Int = 0
    
    var body: some View {
        VStack {
            Divider()
            PagerTabStripView(selection: $selection) {
                ForEach(lessonTypes) { lessonType in
                    LessonListView(lessonType: lessonType)
                        .pagerTabItem {
                            TitleNavBarItem(title: lessonType.description)
                        }
                }
            }
            .pagerTabStripViewStyle(.scrollableBarButton(
                indicatorBarColor: Color.blue,
                tabItemSpacing: 16,
                tabItemHeight: 48
            ))
        }
    }
}
