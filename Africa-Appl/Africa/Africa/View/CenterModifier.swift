//
//  CenterModifier.swift
//  Africa
//
//  Created by mert palas on 22.03.2024.
//

import Foundation
import SwiftUI

struct CenterModifier: ViewModifier {
    func body(content: Content) -> some View {
        HStack {
            Spacer()
            content
            Spacer()
        }
    }
}
