//
//  JobCardView.swift
//  Lebenslauf
//
//  Created by Stanislav Stanchev on 16.07.25.
//

import SwiftUI

struct JobCardView: View {
    var job: (String, String, String)
    //akktuelle Position hervorheben
    var isCurrent: Bool
    
    var body: some View {
        //Jobinfos von meine Array
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
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(
            RoundedRectangle(cornerRadius: 10)
                .fill(Color(.black).opacity(0.9))
                .shadow(color: .yellow.opacity(0.5), radius: 4, x: 2, y: 2)
        )
        .padding(.vertical, 4)
    }
}


