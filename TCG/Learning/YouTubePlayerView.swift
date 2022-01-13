//
//  YouTubePlayerView.swift
//  TCG
//
//  Created by Alexander Chiou on 1/12/22.
//

import SwiftUI
import WebKit

struct YouTubePlayerView: UIViewRepresentable {

    let videoId: String
    let delegate: WKNavigationDelegate = WebViewDelegate()
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        guard let youtubeUrl = URL(string: "https://www.youtube.com/embed/\(videoId)") else {return}
        uiView.navigationDelegate = delegate
        uiView.scrollView.isScrollEnabled = false
        uiView.load(URLRequest(url: youtubeUrl))
    }
    
    private class WebViewDelegate: NSObject, WKNavigationDelegate {
        
        override init() {}
        
        func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
            print("Webview is loading!")
        }
        
        func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
            print("Webview is done loading!")
        }
    }
}
