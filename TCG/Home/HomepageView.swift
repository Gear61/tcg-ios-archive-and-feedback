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
        PagerTabStripView(selection: $selection) {
            InterviewingView()
                .pagerTabItem {
                    Text("Interviewing")
                }
            ResumeView()
                .pagerTabItem {
                    Text("Resume")
                }
        }
        .pagerTabStripViewStyle(.scrollableBarButton(
            indicatorBarColor: Color.blue,
            tabItemSpacing: 16,
            tabItemHeight: 48
        ))
    }
}
