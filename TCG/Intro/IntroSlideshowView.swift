//
//  IntroSlideshowView.swift
//  TCG
//
//  Created by Alexander Chiou on 2/24/22.
//

import SwiftUI
import SwiftUIPager

struct IntroSlideshowView: View {

    var animationNames = ["welcome", "learn", "feedback"]
    var titles = [
        "Welcome!",
        "Learn From The Best",
        "We Strive To Improve. Fast"
    ]
    var slideTexts = [
        "Tech Career Growth is a 15,000+ person learning community designed to accelerate your career in tech. We are so happy to have you with us!",
        "With the official Tech Career Growth app, you can take lessons carefully crafted by engineers from top tech companies like Meta, Robinhood, and Pinterest.",
        "In the end, this app is built for you. We update it every few days with new lessons and improvements, powered by your feedback. So please let us know what you think!"
    ]
    
    @StateObject var page: Page = .first()
    var items = Array(0..<3)
   
    func onSlideshowFinish() {
        UserDefaultUtil.markSlideshowAsSeen()
    }
    
    var body: some View {
        VStack {
            Pager(
                page: self.page,
                data: self.items,
                id: \.self
            ) {
                self.pageView($0)
            }
            Spacer()
            Button(action: onSlideshowFinish) {
                Text("Start Learning")
                    .foregroundColor(Color.white)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 4).fill(Color.blue))
            }
            .padding()
        }
    }
    
    func pageView(_ page: Int) -> some View {
        IntroSlideView(
            animationName: self.animationNames[page],
            title: self.titles[page],
            slideText: self.slideTexts[page]
        )
    }
}
