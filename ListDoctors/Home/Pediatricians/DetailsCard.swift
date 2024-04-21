//
//  DetailsCard.swift
//  ListDoctors
//
//  Created by Amina TomasMart on 21.04.2024.
//

import SwiftUI

struct DetailsCard: View {
    var users: Users
    var body: some View {
        VStack(alignment: .leading, spacing: 15) {
            VStack(alignment: .leading, spacing: 5) {
                Text(users.lastName ?? "")
                Text((users.firstName ?? "") + " " + (users.patronymic ?? ""))
            }
            VStack(alignment: .leading, spacing: 10) {
                HStack {
                    StarsView(rating: CGFloat(users.ratingsRating ?? 3), maxRating: 5)
                }
                switch users.seniority {
                case 0:
                    Text(("\(users.specialization.last?.name ?? "Терапевт")") + "・" + ("стаж от 1 до 3 лет"))
                        .foregroundStyle(.gray)
                case 1:
                    Text(("\(users.workExpirience.last?.position ?? "Лор")") + "・" + ("стаж \(users.seniority ?? 1) год"))
                        .foregroundStyle(.gray)
                case 2, 3, 4:
                    Text(("\(users.specialization.last?.name ?? "Гинеколог")") + "・" + ("стаж \(users.seniority ?? 3) года"))
                        .foregroundStyle(.gray)
                default:
                    Text(("\(users.workExpirience.last?.position ?? "Уролог")") + "・" + ("стаж \(users.seniority ?? 5) лет"))
                        .foregroundStyle(.gray)
                }
                
                switch users.seniority {
                case 0, 1, 2, 3, 4, 5:
                    Text("от 300 ₽")
                case 6, 7, 8, 9, 10:
                    Text("от 600 ₽")
                default:
                    Text("от 900 ₽")
                }
            }
        }
    }
}

#Preview {
    DetailsCard(users: DoctorsModel.preview)
}
