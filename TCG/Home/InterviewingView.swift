//
//  InterviewingView.swift
//  TCG
//
//  Created by Alexander Chiou on 1/10/22.
//

import SwiftUI

struct InterviewingView: View {

    @EnvironmentObject var dataModel: InterviewContentProvider
    
    var body: some View {
        LazyVStack() {
            ForEach(dataModel.lessons) { lesson in
                LessonRowView(lesson: lesson).id(UUID())
                Divider()
            }
        }
    }
}
