//
//  ExperienceView.swift
//  Lebenslauf
//
//  Created by Stanislav Stanchev on 16.07.25.
//

import SwiftUI

struct ExperienceView: View {
    //Arbeitserfahrung- Tupel mit 3 Strings
    let jobs = [
        ("App- Entwickler Bootcamp", "Syntax Institut", "03.2025-....."),
        ("Umschulung zum Fachinformatiker", "Comcave College", "02.2024-01.2025"),
        ("Beruflicher Orientierungsphase", "", "08.2023-01.2024"),
        ("Zusteller bei der Deutsche Post AG", "Buchholz i. d. Nordheide", "07.2021-07.2023"),
        ("Fahrer und Monteur bei Swiss Sense", "Severtal", "09.2020-07.2021"),
        ("Chefkoch bei der Hollywood Diner Filmcatering GmbH", "Hamburg", "09.2019-08.2020"),
        ("Sous Chef im Hotel Mercure am Volkspark", "Hamburg", "07.2015-08.2019"),
        ("Koch im Restaurant \"Zum Gondel\"", "Hamburg", "12.2013-07.2015"),
        ("Chefkoch bei Dema 03 Ltd.", "Sofia, Bulgarien", "04.2005-10.2013"),
        ("Wahrdienst", "Bulgarien", "06.2004-03-2005"),
        ("AUSBILDUNG:\nTechnologie der Produktion und Bedienung in der öffentlichen Ernährung", "Berufsschule für Tourismus, N.Y Vaptzarov\nKyustendil, Bulgarien", "09.1998-07.2003")
    ]
    //menü klappbar
    @State private var isExpanded = false
    
    var body: some View {
        //alles linskbündig und vertikalen abstand zwischen Elementen
        VStack(alignment: .leading, spacing: 12){
            
            //DropDown
            HStack {
                Text("Berufliche Laufbahn:")
                    .font(.headline)
                    .foregroundColor(.white)
                //Text eine seite Pfeil andere seite
                Spacer()
                Image(systemName: "chevron.down")
                //der Pfail dreht sich
                    .rotationEffect(.degrees(isExpanded ? 180 : 0))
                    .foregroundColor(.white)
                    .animation(.easeInOut, value: isExpanded)
                //bei tippen
                    .onTapGesture {
                        //drehung animieren
                        withAnimation(.easeInOut(duration: 0.9)){
                            //switch true / false
                            isExpanded.toggle()
                        }
                    }
            }
            
            //wenn ausgeklappt = zeigt die Jobliste
            if isExpanded {
                Divider()
                    .background()
                //durchläuft den Tupple
                //für jeder index wird zu eine eindeutiger id
                ForEach(jobs.indices, id: \.self) { index in
                    //das Tupel für die aktuelle zeile
                    let job = jobs[index]
                    
                    //Eigene View für die karten. Die erste Index ist die aktuelle Position
                    JobCardView(job: job, isCurrent: index == 0)
                    //animieren bei ein-/ausblenden
                        .transition(.opacity.combined(with: .slide))
                        .animation(.easeIn.delay(Double(index) * 0.05), value: isExpanded)
                        
                    }
                    
                }
            }
        //eigenen modifier für rahmen
        .styleModi()
    }
}

#Preview {
    ExperienceView()
}
