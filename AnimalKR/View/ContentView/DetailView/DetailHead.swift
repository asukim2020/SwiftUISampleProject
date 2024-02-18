//
//  DetailHead.swift
//  AnimalKR
//
//  Created by 김현구 on 2/18/24.
//

import SwiftUI

struct DetailHead: View {
    
    var headingImage: String
    var headingText: String
    
    var body: some View {
        HStack {
            Image(systemName: headingImage)
                .foregroundColor(.accentColor)
                .imageScale(.large)
            
            Text(headingText)
                .font(.title)
                .bold()
        } // : H
    }
}

#Preview {
    DetailHead(headingImage: "gear", headingText: "Head Title")
}
