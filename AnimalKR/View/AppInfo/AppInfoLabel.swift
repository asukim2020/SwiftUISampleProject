//
//  AppInfoLabel.swift
//  AnimalKR
//
//  Created by 김현구 on 3/19/24.
//

import SwiftUI

struct AppInfoLabel: View {
    
    let labelText: String
    let labelImage: String
    
    var body: some View {
        HStack {
            Text(labelText.uppercased())
                .fontWeight(.bold)
            
//            Spacer()
            
            Image(systemName: labelImage)
                .hTrailing()
        } // : H
    }
}

#Preview {
    AppInfoLabel(labelText: "AppInfoHead", labelImage: "gear")
}
