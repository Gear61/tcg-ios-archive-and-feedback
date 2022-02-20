//
//  HorizontalProgressBar.swift
//  TCG
//
//  Created by Alexander Chiou on 2/19/22.
//

import SwiftUI

struct HorizontalProgressBar: View {
    
    @Binding var progress: CGFloat
    private var barColor: Color
    
    public init(initialProgress: Binding<CGFloat>, color: Color) {
        self._progress = initialProgress
        self.barColor = color
    }
    
    var body: some View {
        GeometryReader { geo in
            ZStack(alignment: .leading) {
                Rectangle()
                    .fill(barColor.opacity(0.4))
                Rectangle()
                    .fill(barColor)
                    .frame(width: min(geo.size.width, geo.size.width * progress))
                    .animation(.linear)
            }
            .cornerRadius(45.0)
        }
    }
}
