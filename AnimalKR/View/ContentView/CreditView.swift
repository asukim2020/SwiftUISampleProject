//
//  CreditView.swift
//  AnimalKR
//
//  Created by 김현구 on 2/18/24.
//

import SwiftUI

struct CreditView: View {
    var body: some View {
        VStack {
            Text("""
  Copyright © Jacob Ko
  All right reserved
  Created by SwiftUI with MVVM architecture
""")
            .font(.footnote)
            .multilineTextAlignment(.center)
            .padding()
            .opacity(0.5)
        }  //: VSTACK
    }
}

#Preview {
    CreditView()
}
