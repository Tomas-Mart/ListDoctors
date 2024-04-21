//
//  CostServicesView.swift
//  ListDoctors
//
//  Created by Amina TomasMart on 18.04.2024.
//

import SwiftUI

struct CostServicesView: View {
    @Environment(\.presentationMode) var presentacion
    var users: Users
    var body: some View {
        ZStack {
            Color.fon.ignoresSafeArea(edges: .top)
            VStack(alignment: .leading, spacing: 30) {
                CardCost(text: "Видеоконсультация", time: "30 мин", cost: "\(users.videoChatPrice ?? 0) ₽")
                CardCost(text: "Чат с врачом", time: "30 мин", cost: "\(users.textChatPrice ?? 0) ₽")
                CardCost(text: "Приём в клинике", time: "30 мин", cost: "\(users.hospitalPrice ?? 0) ₽")
                Spacer()
            }
            .padding()
        }
        .navigationBarTitle("Стоимость услуг", displayMode: .inline)
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: Button(action: {
            self.presentacion.wrappedValue.dismiss()
        }, label: {
            Image(.arrow)
        }))
    }
}
