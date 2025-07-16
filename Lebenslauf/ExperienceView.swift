//
//  ExperienceView.swift
//  Lebenslauf
//
//  Created by Stanislav Stanchev on 16.07.25.
//

import SwiftUI

struct ExperienceView: View {
    //Arbeitserfahrung
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
    
    @State private var isExpanded = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12){
            
            //DropDown
            HStack {
                Text("Berufliche Laufbahn:")
                    .font(.headline)
                    .foregroundColor(.white)
                
                Spacer()
                Image(systemName: "chevron.down")
                    .rotationEffect(.degrees(isExpanded ? 180 : 0))//der Pfail dreht sich
                    .foregroundColor(.white)
                    .animation(.easeInOut, value: isExpanded)
                    .onTapGesture {
                        isExpanded.toggle()
                    }
            }
            
            //wenn ausgeklappt = zeigt die Jobliste
            if isExpanded {
                Divider()
                    .background()
                ForEach(jobs, id: \.0) { job in
                    HStack(alignment: .top, spacing: 10) {
                        Divider()
                        //Trenner
                        Rectangle()
                            .fill(Color.yellow)
                            .frame(width: 4)
                            .cornerRadius(2)
                        
                        //Jobinfos von meine Array
                        VStack(alignment: .leading, spacing: 4){
                            Text(job.0)//Titel
                                .bold()
                                .foregroundColor(.white)
                            Text(job.1)//Wo
                                .foregroundColor(.gray)
                            Text(job.2)// period
                                .font(.caption)
                                .foregroundColor(.gray)
                        }
                    }
                }
            }
        }
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 12)
                .fill(Color(.black).opacity(0.8))
                .shadow(color: .yellow, radius: 6, x: 3, y: 2))
        .padding(.horizontal)
        .padding(.top, 0)

    }
}

#Preview {
    ExperienceView()
}
