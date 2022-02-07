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
                        TitleNavBarItem(title: "Interviewing")
                    }
                LessonListView(lessonType: LessonType.RESUME)
                    .pagerTabItem {
                        TitleNavBarItem(title: "Resume")
                    }
                LessonListView(lessonType: LessonType.PRODUCTIVITY)
                    .pagerTabItem {
                        TitleNavBarItem(title: "Productivity")
                    }
                LessonListView(lessonType: LessonType.PROMOTION)
                    .pagerTabItem {
                        TitleNavBarItem(title: "Promotion")
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
