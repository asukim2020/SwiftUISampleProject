//
//  VideoView.swift
//  AnimalKR
//
//  Created by 김현구 on 2/18/24.
//

import SwiftUI

struct VideoView: View {
    
    // property
    @ObservedObject var vm: AnimalViewModel
    
    var body: some View {
        NavigationView {
            List {
                ForEach(vm.videos) { video in
                    NavigationLink {
                        VideoPlayerView(video: video)
                    } label: {
                        VideoListItem(video: video)
                    } // : LINK
                    
                } // : LOOP
            } // : LIST
            .listStyle(.plain)
            .navigationBarTitle("비디오", displayMode: .inline)
        } // : NAVIGATION
    }
}

#Preview {
    VideoView(vm: AnimalViewModel())
}
