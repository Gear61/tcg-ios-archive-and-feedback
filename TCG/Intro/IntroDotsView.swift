//
//  IntroDotsView.swift
//  TCG
//
//  Created by Alexander Chiou on 2/24/22.
//

import SwiftUI

struct IntroDotsView: View {

    var numDots: Int
    @Binding var highlightIndex: Int
    
    var body: some View {
        HStack(spacing: 16) {
            ForEach(0..<numDots) { index in
                Circle()
                    .fill(index == highlightIndex ? .green : Colors.indicatorCircle)
                    .frame(width: 8, height: 8)
            }
        }
    }
}
