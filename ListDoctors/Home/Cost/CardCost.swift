//
//  CardCost.swift
//  ListDoctors
//
//  Created by Amina TomasMart on 20.04.2024.
//

import SwiftUI

struct CardCost: View {
    @State var text:  String
    @State var time: String
    @State var cost: String
    var body: some View {
        VStack(alignment: .leading) {
            Text(text)
                .bold()
            HStack {
                Text(time)
                    .opacity(0.5)
                Spacer()
                Text(cost)
                    .bold()
            }
            .padding()
            .background(.white)
            .cornerRadius(8)
        }
    }
}
