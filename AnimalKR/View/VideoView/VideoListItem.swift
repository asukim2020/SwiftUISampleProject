//
//  VideoListItem.swift
//  AnimalKR
//
//  Created by 김현구 on 3/5/24.
//

import SwiftUI

struct VideoListItem: View {
    
    // property
    let video: Video
    
    var body: some View {
        HStack (spacing: 10) {
            ZStack {
                Image(video.id)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 120, height: 90)
                    .cornerRadius(10)
                
                Image(systemName: "play.circle")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 32)
                    .shadow(radius: 5)
            } // : Z
            
            VStack (spacing: 10) {
                Text(video.name)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(.accentColor)
                    .hLeading()
                
                Text(video.headline)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
            } // : V
            
        } // : H
    }
}

#Preview {
    VideoListItem(video: Video.sampleVideoData)
}
