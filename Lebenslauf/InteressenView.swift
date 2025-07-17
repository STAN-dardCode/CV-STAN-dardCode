//
//  InteressenView.swift
//  Lebenslauf
//
//  Created by Stanislav Stanchev on 16.07.25.
//

import SwiftUI

struct InteressenView: View {
    //alle Hobyes als Tuple Array
    let hobbies: [(String, String)] = [
        ("Kochen", "fork.knife.circle"),
        ("Programmieren", "laptopcomputer"),
        ("Familie", "figure.2.and.child.holdinghands"),
        ("Fußball", "figure.outdoor.soccer"),
        ("Gym", "figure.strengthtraining.traditional"),
        ("Football", "football.fill"),
        ("Reisen", "globe.europe.africa"),
        ("Trading", "chart.xyaxis.line")
    ]
    
    //sichtbarkeit animieren
    var body: some View {
        //vertikal und linksbündig mit abstand
        VStack(alignment: .leading, spacing: 12) {
            Text("Hobbys")
                .font(.headline)
                .foregroundColor(.white)
            //Trennline
            Divider()
                .background(Color.yellow)
            
            //den hobbies - Array durchlaufen
            ForEach(hobbies, id: \.0) { hobby in
                HStack(spacing: 10) {
                    Text("°")
                        .foregroundColor(.white)
                    Image(systemName: hobby.1)
                        .foregroundColor(.yellow)
                        .frame(width: 20)
                    Text(hobby.0)
                        .foregroundColor(.white)
                }
            }
        }
        .styleModi()
    }
}

#Preview {
    InteressenView()
}
