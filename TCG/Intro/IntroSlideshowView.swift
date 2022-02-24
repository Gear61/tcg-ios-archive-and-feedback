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
    
    var body: some View {
        NavigationView {
                Pager(page: self.page,
                      data: self.items,
                      id: \.self) {
                        self.pageView($0)
                }
                .pagingPriority(.simultaneous)
                .itemSpacing(10)
                .padding(20)
                .itemAspectRatio(1.3)
                .background(Color.gray.opacity(0.2))
                .navigationBarTitle("SwiftUIPager", displayMode: .inline)
            }
            .navigationViewStyle(StackNavigationViewStyle())
    }
    
    func pageView(_ page: Int) -> some View {
        ZStack {
            Rectangle()
                .fill(Color.yellow)
            NavigationLink(destination: Text("Page \(page)")) {
                Text("Page \(page)")
            }
        }
        .cornerRadius(5)
        .shadow(radius: 5)
    }
}
