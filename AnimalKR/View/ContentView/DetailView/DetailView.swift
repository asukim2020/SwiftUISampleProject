//
//  DetailView.swift
//  AnimalKR
//
//  Created by 김현구 on 2/18/24.
//

import SwiftUI

struct DetailView: View {
    
    let animal: Animal
    
    var body: some View {
        ScrollView {
            VStack (spacing: 20) {
                // MARK: - Head Image
                Image(animal.image)
                    .resizable()
                    .scaledToFit()
                
                // MARK: - Title
                Text(animal.name)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .padding(.vertical, 10)
                    .background(
                        Color.accentColor
                            .frame(height: 6)
                            .offset(y: 25)
                    )
                
                // MARK: - Head line
                Text(animal.headline)
                    .font(.title3)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.accentColor)
                    .padding()
                
                // VStack 에는 10개의 컴포넌트만 넣을 수 있어, Group 을 사용하여 여러개 넣기 위함
                Group {
                    // MARK: - Gallery
                    DetailHead(headingImage: "photo.on.rectangle.angled", headingText: "\(animal.name) 사진들")
                    DetailGallery(animal: animal)
                    
                    // MARK: - Desctiption
                    DetailHead(headingImage: "info.circle", headingText: "자세한 정보")
                    Text(animal.description)
                        .font(.subheadline)
                        .padding(.horizontal, 10)
                } // : GROUP
                
                Group {
                    // MARK: - Fact
                    DetailHead(headingImage: "location.magnifyingglass", headingText: "팩트체크")
                    DetailFact(animal: animal)
                }
                
                Group {
                    // MARK: - 참고자료
                    DetailHead(headingImage: "books.vertical", headingText: "참고자료")
                    ExternalWebLink(animal: animal)
                }
                
                // MARK: - Copyright
                Text(animal.copyright)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.secondary)
                    .padding(.horizontal)
            } // : V
            .navigationBarTitle("\(animal.name) 자세히 알아보기", displayMode: .inline)
        } // : SCROLL
    }
}

#Preview {
    NavigationView {
        DetailView(animal: Animal.sampleAnimal)
    }
}
