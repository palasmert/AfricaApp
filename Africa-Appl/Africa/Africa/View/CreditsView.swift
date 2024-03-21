//
//  CreditsView.swift
//  Africa
//
//  Created by mert palas on 22.03.2024.
//

import SwiftUI

struct CreditsView: View {
    var body: some View {
        VStack{
            Image("Compass")
                .resizable()
                .scaledToFit()
                .frame(width: 128,height: 128)
            
            Text("""
        Copyright Robert Petras
        All rights reserved
""")
        }//:VSTACK
        .padding()
        .opacity(0.2)
    }
}

#Preview {
    CreditsView()
}
