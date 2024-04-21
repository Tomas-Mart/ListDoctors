//
//  ProfilView.swift
//  ListDoctors
//
//  Created by Amina TomasMart on 21.04.2024.
//

import SwiftUI

struct ProfilView: View {
    var users: Users
    var body: some View {
        HStack(spacing: 20) {
            AsyncImage(url: URL(string: users.avatar ?? "")) { image in
                image
                    .resizable()
                    .scaledToFill()
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
            } placeholder: {
                ProgressView()
            }
            
            VStack(alignment: .leading, spacing: 10) {
                Text(users.lastName ?? "")
                Text((users.firstName ?? "") + " " + (users.patronymic ?? ""))
            }
            Spacer()
        }
        .padding()
    }
}

#Preview {
    ProfilView(users: DoctorsModel.preview)
}
