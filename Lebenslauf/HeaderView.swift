//
//  HeaderView.swift
//  Lebenslauf
//
//  Created by Stanislav Stanchev on 16.07.25.
//

import SwiftUI

struct HeaderView: View {
    
    //Profilbild animieren
    @State private var animateIntro = false
    
    var body: some View {
        //vertikalen abstand
        VStack(spacing: 15) {
            // Oberer Bereich: Bild & Kontakt
            HStack(alignment: .center, spacing: 10) {
                // Profilbild mit Schatten & Rand
                Image("Profilbild")
                //skalierbar
                    .resizable()
                //ohne verzerrung
                    .aspectRatio(contentMode: .fill)
                //rahmen
                    .frame(maxWidth: 140, maxHeight: 140)
                //form
                    .clipShape(Circle())
                //Rand
                    .overlay(Circle().stroke(Color.gold, lineWidth: 2))
                //schatten für tiefe
                    .shadow(color: .yellow, radius: 5)
                //animieren bei starten
                    .opacity(animateIntro ? 1 : 0)
                    .offset(x: animateIntro ? 0 : -80)
                //Feder animation von links (x achse)
                    .animation(.interpolatingSpring(stiffness: 70, damping: 10).delay(0.4), value: animateIntro)
                
                // Textblock: Name & Kontaktdaten
                VStack(alignment: .leading, spacing: 5) {
                    Text("Stanislav Stanchev")
                        .font(.title2)
                        .fontDesign(.serif)
                        .bold()
                        .foregroundColor(.gold)
                    //Divider()
                    //für kleinere Displays- automatisch kleiner wenn wennig Platz
                        .minimumScaleFactor(0.5)
                        .opacity(animateIntro ? 1 : 0)
                    //kommt von oben (Y achse)
                        .offset(y: animateIntro ? 0 : -80)
                        .animation(.easeOut(duration: 1), value: animateIntro)
                    
                    
                    //Text und Symbol
                    Label("17.12.1984", systemImage: "calendar")
                    Label("Neue Straße 19a, 21635 Jork", systemImage: "house")
                    //für kleinere Displays- automatisch kleiner wenn wennig Platz
                        .minimumScaleFactor(0.5)
                    
                    //öfnett mail
                    Link(destination: URL(string: "mailto:st.stancheff@gmail.com")!) {
                        HStack{
                            ZStack {
                                //für den Icon
                                Circle()
                                    .fill(Color.black.opacity(0.8))
                                    .frame(width: 26, height: 26)
                                    .overlay(Circle().stroke(Color.gold, lineWidth: 1))
                                    .shadow(color: .yellow, radius: 8)
                                Image(systemName: "envelope")
                            }
                            
                            Text("st.stancheff@gmail.com")
                        }
                        .foregroundColor(.blue)
                        .font(.subheadline)
                        .minimumScaleFactor(0.5)
                    }
                    
                    //für anruf
                    Link(destination: URL(string: "tel:+4915229062570")!) {
                        HStack {
                            ZStack {
                                Circle()
                                    .fill(Color.black.opacity(0.7))
                                    .frame(width: 26, height: 26).overlay(Circle().stroke(Color.gold, lineWidth: 1))
                                    .shadow(color: .yellow, radius: 8)
                                Image(systemName: "phone")
                            }
                            
                            Text("+49 1522 9062570")
                            
                        }
                        .foregroundColor(.blue)
                        .font(.subheadline)
                    }
                }
                .font(.subheadline)
                .foregroundColor(.white)
            }
            
            // Abstand zu dem obere rand
            .padding(.top, 20)
            //zu dem unteren rand
            .padding(.bottom, 35)
            .padding(.horizontal)
            .background(
                //eigenen background Rahme
                RoundedCorner(radius: 30, corners: [.bottomLeft, .bottomRight])
                    .fill(Color(.black))
                    .shadow(color: .yellow, radius: 6, x: 3, y: 2)
            )
            
            //Die Icons legen per .overlay auf den Header
            .overlay(
                //hoorisontal geordent
                HStack(spacing: 30) {
                    //Link zu GitHub
                    Link(destination: URL(string: "https://github.com/STAN-dardCode?tab=repositories")!) {
                        Image("gitHub")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 40, height: 40)
                            .clipShape(Circle())
                            .overlay(Circle().stroke(Color.yellow, lineWidth: 1))
                            .shadow(color: .yellow.opacity(0.6), radius: 4, x: 2, y: 2)
                    }
                    //Link zu figma
                    Link(destination: URL(string: "https://www.figma.com/proto/JMS0G9MhL8nu3KOjXhsU8h/MatchApp?page-id=78%3A261&node-id=79-261&p=f&m=draw&scaling=scale-down&content-scaling=fixed&starting-point-node-id=79%3A261&show-proto-sidebar=1&t=TyXPrRsKGGwGJrCc-1")!) {
                        Image("figma")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 40, height: 40)
                            .clipShape(Circle())
                            .overlay(Circle().stroke(Color.yellow, lineWidth: 1))
                            .shadow(color: .yellow.opacity(0.6), radius: 4, x: 2, y: 2)
                    }
                    // Link zu Swift projekt
                    Link(destination: URL(string: "https://github.com/STAN-dardCode/Pass_Manager")!) {
                        Image("swift")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 40, height: 40)
                            .clipShape(Circle())
                            .overlay(Circle().stroke(Color.yellow, lineWidth: 1))
                            .shadow(color: .yellow.opacity(0.6), radius: 4, x: 2, y: 2)
                    }
                    //...zu Kotlin Projekt
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
                //auf nimmer sicher
                    .background(Color.clear)
                //verschiebt die Icons nach unten
                    .offset(y: 35), alignment: .bottom
                
            )
            
            .onAppear {
                animateIntro = true
            }
        }
    }
    
}

#Preview {
    HeaderView()
}
