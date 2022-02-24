//
//  ContentView.swift
//  TCG
//
//  Created by Alexander Chiou on 1/10/22.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        if (UserDefaultUtil.hasSeenSlideshow()) {
            HomepageView()
        } else {
            IntroSlideshowView()
        }
    }
}
