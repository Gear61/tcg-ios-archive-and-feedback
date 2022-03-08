//
//  LessonTagRowView.swift
//  TCG
//
//  Created by Alexander Chiou on 3/8/22.
//

import SwiftUI

struct LessonTagRowView: View {
    
    @ObservedObject var viewModel: LessonTagViewModel
    
    var body: some View {
        VStack {
            Text(viewModel.tag.description)
        }
    }
}
