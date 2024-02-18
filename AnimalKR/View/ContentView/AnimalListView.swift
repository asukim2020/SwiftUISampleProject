//
//  AnimalListView.swift
//  AnimalKR
//
//  Created by 김현구 on 2/18/24.
//

import SwiftUI

struct AnimalListView: View {
    let animal: Animal
    
    var body: some View {
        HStack (spacing: 20) {
            Image(animal.image)
                .resizable()
                .scaledToFill()
                .frame(width: 90, height: 90)
                .clipShape(RoundedRectangle(cornerRadius: 12))
            
            VStack {
                Text(animal.name)
                    .hLeading()
                    .font(.title)
                    .foregroundColor(.accentColor)
                
                Text(animal.headline)
                    .font(.footnote)
                    .lineLimit(2)
                    .padding(.trailing, 10)
            } // : V
        } // : H
    }
}

#Preview {
    AnimalListView(animal: Animal.sampleAnimal)
}
