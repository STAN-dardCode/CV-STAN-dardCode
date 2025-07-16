//
//  InfoListView.swift
//  Lebenslauf
//
//  Created by Stanislav Stanchev on 16.07.25.
//

import SwiftUI


struct InfoListView: View {
    let title: String    // Listname
    let items: [String]  // Elementen
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(title)
                .font(.headline)
                .foregroundColor(.white)
            Divider()
                .background(Color.yellow)
            ForEach(items, id: \.self) { item in
                Text("°  \(item)")
                    .foregroundColor(.white)
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
