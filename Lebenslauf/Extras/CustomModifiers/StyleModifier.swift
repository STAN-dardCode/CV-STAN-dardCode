//
//  SeparatorModifier.swift
//  Lebenslauf
//
//  Created by Stanislav Stanchev on 17.07.25.
//

import SwiftUI

struct StyleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding()
            .background(
                RoundedRectangle(cornerRadius: 12)
                    .fill(Color(.black).opacity(0.8))
                    .shadow(color: .gold, radius: 6, x: 5, y: 2) // Tiefe unten rechts
                    .shadow(color: .yellow.opacity(0.5), radius: 5, x: -5, y: -2) // Licht oben links
                
            )
            .padding(.horizontal)
    }
}

