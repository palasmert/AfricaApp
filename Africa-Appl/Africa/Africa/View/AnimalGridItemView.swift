//
//  AnimalGridItemView.swift
//  Africa
//
//  Created by mert palas on 22.03.2024.
//

import SwiftUI

struct AnimalGridItemView: View {
    //MARK:- PROP
    
    let animal: Animal
    
    //:MARK: - BODY
    var body: some View {
        Image(animal.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(14)
    }
}

struct animalGridItemView_Previews:PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View{
        AnimalGridItemView(animal: animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
