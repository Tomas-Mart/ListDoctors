//
//  CostLabel.swift
//  ListDoctors
//
//  Created by Amina TomasMart on 21.04.2024.
//

import SwiftUI

struct CostLabel: View {
    var users: Users
    var body: some View {
        HStack {
            Text("Стоимость услуг")
            Spacer()
            switch users.seniority {
            case 0, 1, 2, 3, 4, 5:
                Text("от 300 ₽")
            case 6, 7, 8, 9, 10:
                Text("от 600 ₽")
            default:
                Text("от 900 ₽")
            }
        }
        .padding()
        .background(.white)
        .cornerRadius(8)
        .padding()
    }
}

#Preview {
    CostLabel(users: DoctorsModel.preview)
}
