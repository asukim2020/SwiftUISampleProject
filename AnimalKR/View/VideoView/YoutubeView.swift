//
//  YoutubeView.swift
//  AnimalKR
//
//  Created by 김현구 on 3/5/24.
//

import SwiftUI
import WebKit

struct YoutubeView: UIViewRepresentable {
    
    let videoId: String
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        guard let youtubeURL = URL(string: "https://www.youtube.com/embed/\(videoId)") else {
            return
        }
        
        uiView.scrollView.isScrollEnabled = false
        uiView.load(URLRequest(url: youtubeURL))
    }
}
