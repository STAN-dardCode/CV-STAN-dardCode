//
//  RounderCorner.swift
//  Lebenslauf
//
//  Created by Stanislav Stanchev on 16.07.25.
//

import SwiftUI

struct RoundedCorner: Shape {
    //abrundung = maximal
    var radius: CGFloat = .infinity
    //einzelnen ecken zu wählen
    var corners: UIRectCorner = .allCorners
     
    //swift funktion- erkennt wie den Shape aussieht
    func path(in rect: CGRect) -> Path {
        //zeichnet eine recteck
        let path = UIBezierPath(
            //mit bestimmten ecken
            roundedRect: rect, byRoundingCorners: corners,
            //...mit besstimmte radius
            cornerRadii: CGSize(width: radius, height: radius)
        )
        return Path(path.cgPath)
    }
}

#Preview {
    RoundedCorner()
}

