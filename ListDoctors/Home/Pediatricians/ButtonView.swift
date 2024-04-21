//
//  ButtonView.swift
//  ListDoctors
//
//  Created by Amina TomasMart on 21.04.2024.
//

import SwiftUI

struct ButtonView: View {
    var users: Users
    var body: some View {
        NavigationLink {
            PediatricianView(users: users)
        } label: {
            if let rank = users.rank, rank == 0 {
                Text("Нет свободного расписания")
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(.gray.opacity(0.3))
                    .foregroundStyle(.black)
                    .cornerRadius(8)
                    .padding()
            } else {
                Text("Записаться")
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(.color1)
                    .foregroundStyle(.white)
                    .cornerRadius(8)
                    .padding()
            }
        }
    }
}

#Preview {
    ButtonView(users: DoctorsModel.preview)
}
