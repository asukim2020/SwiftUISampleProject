//
//  ContentView.swift
//  AnimalKR
//
//  Created by 김현구 on 2/18/24.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var vm: AnimalViewModel
    
    var body: some View {
        NavigationView {
            
            List {
                // MARK: - Cover Image - hero Image
                CoverImageView(vm: vm)
                    .frame(height: CGFloat.screenHeight * 0.4)
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                
                ForEach(vm.animals) { animal in
                    NavigationLink {
                        DetailView(animal: animal)
                    } label: {
                        AnimalListView(animal: animal)
                            .listRowInsets(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 0))
                    } // : LINK
                } // : LOOP
                CreditView()
                    .hCenter()
            } // : LIST
            .listStyle(.plain)
            .navigationTitle("멸종위기 동물들")
            
        } // : NAVI
    }
}

#Preview {
    ContentView(vm: AnimalViewModel())
}
