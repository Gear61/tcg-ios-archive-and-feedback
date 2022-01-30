//
//  ProductivityView.swift
//  TCG
//
//  Created by Alexander Chiou on 1/29/22.
//

import SwiftUI

struct ProductivityView: View {

    @EnvironmentObject var dataModel: ProductivityContentProvider
    
    var body: some View {
        LazyVStack() {
            ForEach(dataModel.lessons) { lesson in
                LessonRowView(lesson: lesson).id(UUID())
                Divider()
            }
        }
    }
}
