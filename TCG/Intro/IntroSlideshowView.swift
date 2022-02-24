//
//  IntroSlideshowView.swift
//  TCG
//
//  Created by Alexander Chiou on 2/24/22.
//

import SwiftUI
import SwiftUIPager

struct IntroSlideshowView: View {
    
    @StateObject var page: Page = .first()
    var items = Array(0..<10)
    
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
        IntroSlideView()
    }
}
