//
//  ViewExtension.swift
//  Lebenslauf
//
//  Created by Stanislav Stanchev on 17.07.25.
//

import SwiftUI

extension View {
    func styleModi() -> some View {
        self.modifier(StyleModifier())
    }
}
