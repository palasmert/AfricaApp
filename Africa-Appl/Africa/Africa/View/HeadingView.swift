//
//  HeadingView.swift
//  Africa
//
//  Created by mert palas on 11.03.2024.
//

import SwiftUI

struct HeadingView: View {
    //MARK: PROP
    var headingImage: String
    var headingText: String
    
    //MARK: BODY
    var body: some View {
        HStack {
            Image(systemName: headingImage)
                .foregroundColor(.accentColor)
                .imageScale(.large)
                
                Text(headingText)
                .font(.title3)
                .fontWeight(.bold)
        }
        .padding(.vertical)
    }
}
//MARK: PREWV
#Preview {
    HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "Wilderness in Pictures")
        .previewLayout(.sizeThatFits)
        .padding()
}
