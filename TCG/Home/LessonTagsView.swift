//
//  LessonTagsView.swift
//  TCG
//
//  Created by Alexander Chiou on 3/8/22.
//

import SwiftUI

struct LessonTagsView: View {
    
    @EnvironmentObject var lessonProvider: LessonProvider
    
    var body: some View {
        VStack(spacing: 0) {
            ScrollView(showsIndicators: false) {
                LazyVStack() {
                    ForEach(
                        Array(lessonProvider.getLessonTagViewModels().enumerated()),
                        id: \.element
                    ) { index, viewModel in
                        LessonTagRowView(viewModel: viewModel)
                    }
                }
            }
            Divider()
        }
    }
}
