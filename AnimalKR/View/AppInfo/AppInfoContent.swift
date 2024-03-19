//
//  AppInfoContent.swift
//  AnimalKR
//
//  Created by 김현구 on 3/19/24.
//

import SwiftUI

struct AppInfoContent: View {
    
    var name: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
    var body: some View {
        VStack {
            Divider()
                .padding(.vertical, 5)
            
            HStack {
                Text(name)
                    .foregroundColor(.gray)
                
                if let content = content {
                    Text(content)
                        .fontWeight(.bold)
                        .foregroundColor(.primary)
                        .hTrailing()
                } else if let linkLabel = linkLabel,
                          let linkDestination = linkDestination {
                    Link(destination: URL(string: "https://\(linkDestination)")!, label: {
                        Spacer()
                        Text(linkLabel)
                            .fontWeight(.bold)
                            .foregroundColor(.accentColor)
                    }) // : LINK
                    
                    Image(systemName: "arrow.up.right.square").foregroundColor(.accent)
                } else {
                    EmptyView()
                }
                
            } // : H
        } // : V
    } // : BODY
}

#Preview {
    Group {
        AppInfoContent(name: "Sample", content: "Jacob Ko")
        AppInfoContent(name: "Sample2", linkLabel: "Jocob's Blog", linkDestination: "jacobko.info")
    }
}
