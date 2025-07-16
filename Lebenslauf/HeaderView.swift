//
//  HeaderView.swift
//  Lebenslauf
//
//  Created by Stanislav Stanchev on 16.07.25.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        
        VStack(spacing: 15) {
            // Oberer Bereich: Bild & Kontakt
            HStack(alignment: .center, spacing: 10) {
                // Profilbild mit Schatten & Rand
                Image("Profilbild")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 140, height: 140)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.gold, lineWidth: 2))
                    .shadow(color: .yellow, radius: 5)
                
                // Textblock: Name & Kontaktdaten
                VStack(alignment: .leading, spacing: 5) {
                    Text("Stanislav Stanchev")
                        .font(.title2)
                        .bold()
                        .foregroundColor(.white)
                    Divider()
                        .background(Color.yellow)
                        .padding()
                    
                    
                    Label("17.12.1984", systemImage: "calendar")
                    Label("Neue Straße 19a, 21635 Jork", systemImage: "house")
                    
                    Link(destination: URL(string: "mailto:st.stancheff@gmail.com")!) {
                        Label("st.stancheff@gmail.com", systemImage: "envelope")
                            .foregroundColor(.blue)
                    }
                    Link(destination: URL(string: "tel:+4915229062570")!) {
                        Label("+49 152 29062570", systemImage: "phone")
                            .foregroundColor(.white)
                    }
                }
                .font(.subheadline)
                .foregroundColor(.white)
            }
            //Logo-Leiste: Figma, Swift, Kotlin – jeweils als runder Button
            
            .padding(.top, 20)
            .padding(.bottom, 50)
            .padding(.horizontal)
            .background(
                RoundedCorner(radius: 30, corners: [.bottomLeft, .bottomRight])
                    .fill(Color(.black))
                    .shadow(color: .yellow, radius: 6, x: 3, y: 2)
            )
            .overlay( //Die Icons legen wir per .overlay auf den Header
                HStack(spacing: 30) {
                    Link(destination: URL(string: "https://github.com/STAN-dardCode?tab=repositories")!) {
                        Image("gitHub")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 40, height: 40)
                            .clipShape(Circle())
                            .overlay(Circle().stroke(Color.yellow, lineWidth: 1))
                            .shadow(color: .yellow.opacity(0.6), radius: 4, x: 2, y: 2)
                    }
                    Link(destination: URL(string: "https://www.figma.com/proto/JMS0G9MhL8nu3KOjXhsU8h/MatchApp?page-id=78%3A261&node-id=79-261&p=f&m=draw&scaling=scale-down&content-scaling=fixed&starting-point-node-id=79%3A261&show-proto-sidebar=1&t=TyXPrRsKGGwGJrCc-1")!) {
                        Image("figma")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 40, height: 40)
                            .clipShape(Circle())
                            .overlay(Circle().stroke(Color.yellow, lineWidth: 1))
                            .shadow(color: .yellow.opacity(0.6), radius: 4, x: 2, y: 2)
                    }
                    Link(destination: URL(string: "https://github.com/STAN-dardCode/Pass_Manager")!) {
                        Image("swift")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 40, height: 40)
                            .clipShape(Circle())
                            .overlay(Circle().stroke(Color.yellow, lineWidth: 1))
                            .shadow(color: .yellow.opacity(0.6), radius: 4, x: 2, y: 2)
                    }
                    Link(destination: URL(string: "https://github.com/STAN-dardCode/BankSecurity")!) {
                        Image("kotlin")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 40, height: 40)
                            .clipShape(Circle())
                            .overlay(Circle().stroke(Color.yellow, lineWidth: 1))
                            .shadow(color: .gold.opacity(0.6), radius: 4, x: 2, y: 2)
                    }
                }
                    .padding()
                    .background(Color.clear)
                    .offset(y: 35), //verschiebt die Icons nach unten
                alignment: .bottom
            )
        }
    }}

#Preview {
    HeaderView()
}
