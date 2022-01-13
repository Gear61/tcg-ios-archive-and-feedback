//
//  WatchingContentView.swift
//  TCG
//
//  Created by Alexander Chiou on 1/12/22.
//

import SwiftUI

struct WatchingContentView: View {
    
    var lesson: Lesson
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(lesson.name)
                .foregroundColor(Colors.titleText)
                .font(.title2)
                .padding(.bottom, 8)
            Text("To learn the contents of this lesson, watch the video below. After you are done, click the \"Quiz Me!\" button to see if you have truly mastered the content. Happy learning!")
                .foregroundColor(Colors.normalText)
                .font(.body)
            Spacer()
        }
        .padding()
    }
}
