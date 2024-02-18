//
//  CoverImageView.swift
//  AnimalKR
//
//  Created by 김현구 on 2/18/24.
//

import SwiftUI

struct CoverImageView: View {
    
    @ObservedObject var vm: AnimalViewModel
    
    var body: some View {
        TabView {
            ForEach (vm.coverImages) { cover in
                Image(cover.name)
                    .resizable()
                    .scaledToFill()
                
            } // : LOOP
        } // : TAP
        .tabViewStyle(.page)
    } // : BODY
}

#Preview {
    CoverImageView(vm: AnimalViewModel())
        .previewLayout(.fixed(width: 400, height: 300))
}
