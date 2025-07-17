//
//  SwiftUIView.swift
//  Lebenslauf
//
//  Created by Stanislav Stanchev on 16.07.25.
//

import SwiftUI

//view Komponente
struct AboutMeView: View {
    //Property Wrapper
    @State private var isExpended = false
    
    //in body- alles was sichtbar ist
    var body: some View {
        //vertikale stapel - alles linksbündig, abstand zwischen Elementen = 10
        VStack(alignment: .leading, spacing: 10) {
            //horisontalen stapel-titelzeile
            HStack {
                Text("Über mich:")
                    .font(.headline)
                    .foregroundColor(.white)
                //nächste element ganz nach rechts schieben
                Spacer()
                //...mit Pfeil
                Image(systemName: "chevron.down")
                //dreht um 180 grad wenn true
                    .rotationEffect(.degrees(isExpended ? 180 : 0))
                    .foregroundColor(.white)
                //rotation animieren
                    .animation(.easeInOut, value: isExpended)
                //bei tippen...
                    .onTapGesture {
                        //für ein und ausklappen animieren
                        withAnimation(.easeInOut(duration: 0.9)){
                            //switcht true / false
                            isExpended.toggle()
                        }
                    }
            }
            
            //wenn aufgeklappt
            if isExpended {
                //trennlinie
                Divider()
                    .background(Color.yellow)
                //text sichtbar
                ( Text("Die Konstante in meinem Leben: Veränderung und Entwicklung.\n").foregroundColor(.gold).underline() +
                Text("""

      Die erste Teil meines Leben habe ich in Bulgarien verbracht,doch bereits als Jugendlicher wusste ich, dass es mich in die Welt hinaus zieht. Seit jeher ist mein Wünsch etwas zu kreieren, was ich sofort sehen kann. So habe ich meine Ausbildung zum Koch gemacht und die folgenden Jahre in angesehenen Küchen gearbeitet. Dabei habe ich mich zum Chefkoch hochgearbeitet. 
     Vor vier Jahren bekamen meine Frau und ich unseren Sohn. Ich bin Familienmensch und die höhe Taktung, die Schichten sowie körperliche Belastung in die Küche passten nicht dazu. Ich habe also meine berufliches Leben für die Familie umgekrempelt. Nach eine Phase der Sortierung, Orientierung und des Ausprobierens steht mein neues Ziel im Bereich der Programmierung fest.
      Auch hier kann ich kreieren und die Ergebnisse sofort sichtbar machen. Ich bin mit großer Leidenschaft, Freude und Begeisterung dabei und Wünsche mir eine Chance, mich in diesem Bereich wietezuentwickeln und zu beweisen.

""")
                 )
                //text einstelungen
                .font(.body)
                .foregroundColor(.white)
                //animieren bei ein-/ausblenden
                .transition(.opacity.combined(with: .slide))
            }
        }
        //custom modifier für background karte
        .styleModi()
    }
      
}


#Preview {
    AboutMeView()
}
