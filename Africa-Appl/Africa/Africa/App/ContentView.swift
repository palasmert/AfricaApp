//
//  ContentView.swift
//  Africa
//
//  Created by mert palas on 6.03.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        //MARK: - PROP
        
        
        //MARK: - BODY
        NavigationView {
            List{
                CoverImageView()
                    .frame(height: 300)
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
            }//: LIST
            .navigationBarTitle("Africa", displayMode: .large)
        }//: NAVIGATION
    }
}
//: PREVW
#Preview {
    ContentView()
}
