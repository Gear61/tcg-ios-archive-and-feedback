//
//  HomepageView.swift
//  TCG
//
//  Created by Alexander Chiou on 1/10/22.
//

import SwiftUI
import PagerTabStripView

struct HomepageView: View {
    
    @State private var selection: Int = 0
    
    var body: some View {
        VStack {
            Divider()
            PagerTabStripView(selection: $selection) {
                LessonListView(lessonType: LessonType.INTERVIEWING)
                    .pagerTabItem {
                        TitleNavBarItem(title: LessonType.INTERVIEWING.description)
                    }
                LessonListView(lessonType: LessonType.RESUME)
                    .pagerTabItem {
                        TitleNavBarItem(title: LessonType.RESUME.description)
                    }
                LessonListView(lessonType: LessonType.PRODUCTIVITY)
                    .pagerTabItem {
                        TitleNavBarItem(title: LessonType.PRODUCTIVITY.description)
                    }
                LessonListView(lessonType: LessonType.PROMOTION)
                    .pagerTabItem {
                        TitleNavBarItem(title: LessonType.PROMOTION.description)
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
