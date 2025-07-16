//
//  SwiftUIView.swift
//  Lebenslauf
//
//  Created by Stanislav Stanchev on 16.07.25.
//

import SwiftUI

struct AboutMeView: View {
    @State private var isExpended = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            HStack {
                Text("Über mich:")
                    .font(.headline)
                    .foregroundColor(.white)
                
                Spacer()
                
                Image(systemName: "chevron.down")
                    .rotationEffect(.degrees(isExpended ? 180 : 0))
                    .foregroundColor(.white)
                    .animation(.easeInOut, value: isExpended)
                    .onTapGesture {
                        isExpended.toggle()
                    }
            }
            
            //Text anzeigen
            if isExpended {
                Divider()
                    .background(Color.yellow)
               ( Text("Die Konstante in meinem Leben: Veränderung und Entwicklung.\n").bold() +
                Text("""

      Die erste Hälfte meines Leben habe ich in Bulgarien verbracht,doch bereits als Jugendlicher wusste ich, dass es mich in die Welt hinaus zieht. Seit jeher ist mein Wünsch etwas zu kreieren, was ich sofort sehen kann. So habe ich meine Ausbildung zum Koch gemacht und die folgenden Jahre in angesehenen Küchen gearbeitet. Dabei habe ich mich zum Chefkoch hochgearbeitet. 
     Vor vier Jahren bekamen meine Frau und ich unseren Sohn. Ich bin Familienmensch und die höhe Taktung, die Schichten sowie körperliche Belastung in die Küche passten nicht dazu. Ich habe also meine berufliches Leben für die Familie umgekrempelt. Nach eine Phase der Sortierung, Orientierung und des Ausprobierens steht mein neues Ziel im Bereich der Programmierung fest.
      Auch hier kann ich kreieren und die Ergebnisse sofort sichtbar machen. Ich bin mit großer Leidenschaft, Freude und Begeisterung dabei und Wünsche mir eine Chance, mich in diesem Bereich wietezuentwickeln und zu beweisen.

""")
                 )
                .font(.body)
                .foregroundColor(.white)
                .transition(.opacity)
            }
        }
        
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 12)
                .fill(Color(.black).opacity(0.8))
                .shadow(color: .yellow, radius: 6, x: 3, y: 2))
        //.frame(maxWidth: .infinity, minHeight: 120)
        .padding(.horizontal)
        .padding(.bottom, 5)
    }
      
}


#Preview {
    AboutMeView()
}
