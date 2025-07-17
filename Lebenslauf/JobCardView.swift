//
//  JobCardView.swift
//  Lebenslauf
//
//  Created by Stanislav Stanchev on 16.07.25.
//

import SwiftUI

struct JobCardView: View {
    //Tupel mit 3 strings
    var job: (String, String, String)
    //akktuelle Position hervorheben
    var isCurrent: Bool
    
    var body: some View {
        //Jobinfos von meine Array untereinander
        VStack(alignment: .leading, spacing: 4){
            Text(job.0)//Titel
                .bold()
                .foregroundColor(isCurrent ? .gold : .white)
            Text(job.1)//Ort
                .foregroundColor(.gray)
            Text(job.2)// period
                .font(.caption)
                .foregroundColor(.gray)
        }
       
        .frame(maxWidth: .infinity, alignment: .leading)
        .styleModi()
    }
}

#Preview {
    JobCardView(job: ("Chefkoch bei Dema 03 Ltd.", "Sofia, Bulgarien", "04.2005-10.2013"), isCurrent: false)
}

