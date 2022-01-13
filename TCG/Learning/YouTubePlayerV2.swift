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
                .frame(width: geometry.size.width / 2, height: geometry.size.height / 5)
                .background(Color.secondary.colorInvert())
                .cornerRadius(20)
                .opacity(self.isShowing ? 1 : 0)
            }
        }
    }
}

class WebViewModel: ObservableObject {
    @Published var url: String
    @Published var isLoading: Bool = true
    
    init (url: String) {
        self.url = url
    }
}

struct WebView: UIViewRepresentable {
    @ObservedObject var viewModel: WebViewModel
    let webView = WKWebView()
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self.viewModel)
    }
    
    class Coordinator: NSObject, WKNavigationDelegate {
        private var viewModel: WebViewModel
        
        init(_ viewModel: WebViewModel) {
            self.viewModel = viewModel
        }
        
        func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
            self.viewModel.isLoading = false
        }
    }
    
    func updateUIView(_ uiView: UIView, context: UIViewRepresentableContext<WebView>) { }
    
    func makeUIView(context: Context) -> UIView {
        self.webView.navigationDelegate = context.coordinator
        
        if let url = URL(string: self.viewModel.url) {
            self.webView.load(URLRequest(url: url))
        }
        
        return self.webView
    }
}

