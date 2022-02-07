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
                InterviewingView()
                    .pagerTabItem {
                        TitleNavBarItem(title: "Interviewing")
                    }
                ResumeView()
                    .pagerTabItem {
                        TitleNavBarItem(title: "Resume")
                    }
                ProductivityView()
                    .pagerTabItem {
                        TitleNavBarItem(title: "Productivity")
                    }
                PromotionView()
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
