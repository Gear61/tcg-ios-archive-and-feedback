//
//  YouTubePlayerV2.swift
//  TCG
//
//  Created by Alexander Chiou on 1/12/22.
//

import SwiftUI
import WebKit

struct ActivityIndicatorView: UIViewRepresentable {
    @Binding var isAnimating: Bool
    let style: UIActivityIndicatorView.Style
    
    func makeUIView(context: UIViewRepresentableContext<ActivityIndicatorView>) -> UIActivityIndicatorView {
        return UIActivityIndicatorView(style: style)
    }
    
    func updateUIView(_ uiView: UIActivityIndicatorView, context: UIViewRepresentableContext<ActivityIndicatorView>) {
        isAnimating ? uiView.startAnimating() : uiView.stopAnimating()
    }
}

struct LoadingView<Content>: View where Content: View {
    @Binding var isShowing: Bool
    var content: () -> Content
    
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .center) {
                self.content()
                    .disabled(self.isShowing)
                    .blur(radius: self.isShowing ? 3 : 0)
                
                VStack {
                    ActivityIndicatorView(isAnimating: .constant(true), style: .large)
                }
                .opacity(self.isShowing ? 1 : 0)
            }
        }
    }
}

class YouTubeWebViewModel: ObservableObject {
    @Published var url: String
    @Published var isLoading: Bool = true
    
    init (url: String) {
        self.url = url
    }
}

struct YouTubeWebView: UIViewRepresentable {
    @ObservedObject var viewModel: YouTubeWebViewModel
    let webView = WKWebView()
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self.viewModel)
    }
    
    class Coordinator: NSObject, WKNavigationDelegate {
        private var viewModel: YouTubeWebViewModel
        
        init(_ viewModel: YouTubeWebViewModel) {
            self.viewModel = viewModel
        }
        
        func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
            self.viewModel.isLoading = false
        }
    }
    
    func updateUIView(_ uiView: UIView, context: UIViewRepresentableContext<YouTubeWebView>) { }
    
    func makeUIView(context: Context) -> UIView {
        self.webView.scrollView.isScrollEnabled = false
        self.webView.navigationDelegate = context.coordinator
        
        if let url = URL(string: self.viewModel.url) {
            self.webView.load(URLRequest(url: url))
        }
        
        return self.webView
    }
}

