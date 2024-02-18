//
//  DetailFact.swift
//  AnimalKR
//
//  Created by 김현구 on 2/18/24.
//

import SwiftUI

struct DetailFact: View {
    
    let animal: Animal
    
    var body: some View {
        GroupBox {
            TabView {
                ForEach(animal.fact, id: \.self) { item in
                    Text(item)
                } // : LOOP
            } // : TAP
            .tabViewStyle(.page)
            .frame(minHeight: 148, idealHeight: 168, maxHeight: 180)
        } // : GROUPBOX
    }
}

#Preview {
    DetailFact(animal: Animal.sampleAnimal)
}
