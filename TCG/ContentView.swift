//
//  ContentView.swift
//  TCG
//
//  Created by Alexander Chiou on 1/10/22.
//

import SwiftUI

enum AppState {
    case WatchingSlideshow
    case OrderingContent
    case ShowingHomepage
}

protocol AppStateDelegate {
    
    func onSlideshowFinished()
    
    func onContentOrderingFinished()
}

struct ContentView: View, AppStateDelegate {
    
    @State var appState: AppState = UserDefaultUtil.getAppState()
    
    func onSlideshowFinished() {
        withAnimation {
            appState = AppState.OrderingContent
        }
    }
    
    func onContentOrderingFinished() {
        withAnimation {
            appState = AppState.ShowingHomepage
        }
    }
    
    var body: some View {
        switch appState {
        case AppState.WatchingSlideshow:
            IntroSlideshowView(delegate: self)
        case AppState.OrderingContent:
            OrderContentView()
        case AppState.ShowingHomepage:
            HomepageView()
        }
    }
}
