//
//  YouTubePlayerView.swift
//  TCG
//
//  Created by Alexander Chiou on 1/12/22.
//

import SwiftUI

struct YouTubePlayerView: View, YouTubeWebViewDelegate {
    
    let videoId: String
    
    @State private var isLoading = true
    
    func onLoadingComplete() {
        if (isLoading) {
            isLoading = false
        }
    }
    
    var body: some View {
        ZStack {
            YouTubeWebView(videoId: videoId, delegate: self)
            if (isLoading) {
                ProgressView()
            }
        }
        .frame(minHeight: 0, maxHeight: UIScreen.main.bounds.height * 0.3)
        .cornerRadius(4)
    }
}
