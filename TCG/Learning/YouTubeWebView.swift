//
//  YouTubeWebView.swift
//  TCG
//
//  Created by Alexander Chiou on 1/12/22.
//

import SwiftUI
import WebKit

protocol YouTubeWebViewDelegate {
    func onLoadingComplete()
}

struct YouTubeWebView: UIViewRepresentable {

    let videoId: String
    let delegate: YouTubeWebViewDelegate
    let listener: WebViewDelegate = WebViewDelegate()
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if (uiView.isLoading) {
            return
        }
        
        guard let youtubeUrl = URL(string: "https://www.youtube.com/embed/\(videoId)") else {return}

        self.listener.delegate = self.delegate
        uiView.navigationDelegate = self.listener
        
        uiView.scrollView.isScrollEnabled = false
        uiView.load(URLRequest(url: youtubeUrl))
    }
    
    class WebViewDelegate: NSObject, WKNavigationDelegate {
    
        var delegate: YouTubeWebViewDelegate? = nil
        
        override init() {}
        
        func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
            print("YouTube WebView has started loading!")
        }
        
        func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
            print("YouTube WebView is done loading!")
            delegate?.onLoadingComplete()
        }
    }
}

