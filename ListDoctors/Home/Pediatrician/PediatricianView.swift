//
//  PediatricianView.swift
//  ListDoctors
//
//  Created by Amina TomasMart on 18.04.2024.
//

import SwiftUI

struct PediatricianView: View {
    @Environment(\.dismiss) var dismiss
    var users: Users
    var body: some View {
        ZStack {
            Color.fon.ignoresSafeArea(edges: .top)
                .navigationBarTitle("Педиатр", displayMode: .inline)
            VStack(alignment: .leading)  {
                
                ProfilView(users: users)
                
                DetailsView(users: users)
                
                CostLabel(users: users)
                
                Text("Проводит диагностику и лечение терапевтических больных. Осуществляет расшифровку и снятие ЭКГ. Дает рекомендации по диетологии. Доктор имеет опыт работы в России и зарубежом. Проводит консультации пациентов на английском языке.")
                    .padding()
                    .opacity(0.6)
                Spacer()
                TextButton(users: users)
            }
        }
        .navigationBarTitle("Педиатры", displayMode: .inline)
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: Button(action: {
            dismiss()
        }, label: {
            Image(.arrow)
        }))
    }
}

#Preview {
    PediatricianView(users: DoctorsModel.preview)
}
