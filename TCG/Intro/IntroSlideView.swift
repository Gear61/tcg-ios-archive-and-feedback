//
//  IntroSlideView.swift
//  TCG
//
//  Created by Alexander Chiou on 2/24/22.
//

import SwiftUI

struct IntroSlideView: View {

    var body: some View {
        VStack {
            Text("Welcome!")
                .font(.title2)
                .foregroundColor(Colors.titleText)
            Text("Tech Career Growth is a 15,000+ person learning community designed to accelerate your career in tech. We are so happy to have you with us!")
                .font(.body)
                .foregroundColor(Colors.normalText)
                .padding(.top, 0.1)
            Spacer()
        }
        .padding()
    }
}
