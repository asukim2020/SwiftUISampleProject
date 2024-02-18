//
//  HomeView.swift
//  AnimalKR
//
//  Created by 김현구 on 2/18/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        TabView {
            
            ContentView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("홈")
                }
            
            VideoView()
                .tabItem {
                    Image(systemName: "play.rectangle")
                    Text("비디오")
                }
            
            GallaryView()
                .tabItem {
                    Image(systemName: "photo")
                    Text("갤러리")
                }
            
            VideoView()
                .tabItem {
                    Image(systemName: "gear")
                    Text("앱정보")
                }
        } // : TAB
    }
}

#Preview {
    HomeView()
}
