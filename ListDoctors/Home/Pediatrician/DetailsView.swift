//
//  DetailsView.swift
//  ListDoctors
//
//  Created by Amina TomasMart on 21.04.2024.
//

import SwiftUI

struct DetailsView: View {
    var users: Users
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            
            switch users.seniority {
            case 0:
                DetailsDoc(image: "Time", text: "Опыт работы: опыт от 1 до 3 лет")
            case 1:
                DetailsDoc(image: "Time", text: "Опыт работы: \(users.seniority ?? 21) год")
            case 2, 3, 4:
                DetailsDoc(image: "Time", text: "Опыт работы: \(users.seniority ?? 22) года")
            default:
                DetailsDoc(image: "Time", text: "Опыт работы: \(users.seniority ?? 25) лет")
            }
            
            switch users.scientificDegreeLabel {
            case "нет":
                DetailsDoc(image: "Bag", text: "Врач второй категории")
            default:
                DetailsDoc(image: "Bag", text: "\(users.scientificDegreeLabel?.uppercased() ?? "Врач высшей категории")")
            }
            DetailsDoc(image: "Hat", text: "\(users.educationTypeLabel?.name ?? "1-й ММИ им. И.М.Сеченова")")
            
            switch users.workExpirience.first?.organization {
            case "string":
                DetailsDoc(image: "Loc", text: "Детская клиника “РебёнОК”")
            default:
                DetailsDoc(image: "Loc", text: "\(users.workExpirience.first?.organization ?? "Взрослая клиника")")
            }
        }
        .padding()
        .foregroundStyle(.gray)
    }
}

#Preview {
    DetailsView(users: DoctorsModel.preview)
}
