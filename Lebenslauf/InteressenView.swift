//
//  InteressenView.swift
//  Lebenslauf
//
//  Created by Stanislav Stanchev on 16.07.25.
//

import SwiftUI

struct InteressenView: View {
    //alle Hobyes als Dict
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
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text("Hobbys")
                .font(.headline)
                .bold()
                .foregroundColor(.white)
            Divider()
                .background()
            
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
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 12)
                .fill(Color(.black).opacity(0.8))
                .shadow(color: .yellow, radius: 6, x: 3, y: 2)
        )
        .padding(.horizontal)
    }
}

#Preview {
    InteressenView()
}
