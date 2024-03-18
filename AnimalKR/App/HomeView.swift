//
//  HomeView.swift
//  AnimalKR
//
//  Created by 김현구 on 2/18/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        
        @StateObject var vm = AnimalViewModel()
        
        TabView {
            ContentView(vm: vm)
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("홈")
                }
            
            VideoView(vm: vm)
                .tabItem {
                    Image(systemName: "play.rectangle")
                    Text("비디오")
                }
            
            GallaryView(vm: vm)
                .tabItem {
                    Image(systemName: "photo")
                    Text("갤러리")
                }
            
            GallaryView(vm: vm)
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
