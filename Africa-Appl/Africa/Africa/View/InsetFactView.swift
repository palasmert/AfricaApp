//
//  InsetFactView.swift
//  Africa
//
//  Created by mert palas on 11.03.2024.
//

import SwiftUI

struct InsetFactView: View {
    //MARK: - PROP
    
    let animal: Animal
    
    //MARK: - BODY
    var body: some View {
        GroupBox {
            TabView {
                ForEach(animal.fact , id:  \.self) { item in
                    Text(item)
                }
            }//: TABS
            .tabViewStyle(PageTabViewStyle())
            .frame(minHeight: 148, idealHeight: 168, maxHeight: 180)
        }//:BOX

    }
}
//MARK: PREWV
struct InsetFactView_Previews: PreviewProvider{
    static let animal: [Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        InsetFactView(animal: animal[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
