//
//  CoverImageView.swift
//  Africa
//
//  Created by mert palas on 8.03.2024.
//

import SwiftUI

struct CoverImageView: View {
    //MARK: - PROP
    let coverImages: [CoverImage] =
    Bundle.main.decode("covers.json")
    
    //MARK: - BODy
    var body: some View {
        TabView{
            ForEach(coverImages) { item in
                Image(item.name)
                    .resizable()
                    .scaledToFill()
            }//: LOOP
        }//: TAB
        .tabViewStyle(PageTabViewStyle())
    }
}

//MARK:PREVW

#Preview {
    CoverImageView()
        .previewLayout(.fixed(width: 400, height: 300))
}
