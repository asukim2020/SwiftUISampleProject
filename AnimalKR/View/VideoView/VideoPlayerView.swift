//
//  VideoPlayerView.swift
//  AnimalKR
//
//  Created by 김현구 on 3/5/24.
//

import SwiftUI

struct VideoPlayerView: View {
    
    let video: Video
    
    var body: some View {
        NavigationView {
            YoutubeView(videoId: video.videoid)
        } // : NAVI
        .navigationBarTitle("\(video.name)", displayMode: .inline)
    }
}

#Preview {
    VideoPlayerView(video: Video.sampleVideoData)
}
