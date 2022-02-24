//
//  IntroSlideView.swift
//  TCG
//
//  Created by Alexander Chiou on 2/24/22.
//

import SwiftUI

struct IntroSlideView: View {

    var animationName: String
    var title: String
    var slideText: String
    
    var body: some View {
        VStack {
            LottieView(animationName: self.animationName)
                .aspectRatio(1.0, contentMode: .fit)
            Text(title)
                .font(.title2)
                .foregroundColor(Colors.titleText)
            Text(slideText)
                .font(.body)
                .foregroundColor(Colors.normalText)
                .padding(.top, 0.1)
            Spacer()
        }
        .padding()
    }
}
