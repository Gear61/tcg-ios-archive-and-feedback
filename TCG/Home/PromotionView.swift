//
//  PromotionView.swift
//  TCG
//
//  Created by Alexander Chiou on 2/7/22.
//

import SwiftUI

struct PromotionView: View {

    @EnvironmentObject var dataModel: PromotionContentProvider
    
    var body: some View {
        LazyVStack() {
            ForEach(dataModel.lessons) { lesson in
                LessonRowView(lesson: lesson).id(UUID())
                Divider()
            }
        }
    }
}
