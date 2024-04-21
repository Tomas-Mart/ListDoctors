//
//  CardDoctor.swift
//  ListDoctors
//
//  Created by Amina TomasMart on 20.04.2024.
//

import SwiftUI

struct CardDoctor: View {
    var users: Users
    @State var isActive = false
    var body: some View {
        VStack {
            VStack {
                HStack(alignment: .top) {
                    VStack {
                        AsyncImage(url: URL(string: users.avatar ?? "")) { image in
                            image
                                .resizable()
                                .scaledToFill()
                                .frame(width: 50, height: 50)
                                .clipShape(Circle())
                        } placeholder: {
                            ProgressView()
                        }
                    }
                    Spacer()
                    DetailsCard(users: users)
                    Spacer()
                    VStack {
                        Button(action: {
                            isActive.toggle()
                        }, label: {
                            if isActive {
                                Image(systemName: "heart.fill")
                                    .foregroundStyle(.color1)
                            } else {
                                Image(systemName: "heart")
                                    .foregroundStyle(.gray)
                            }
                        })
                    }
                }
            }
            .padding()
            ButtonView(users: users)
        }
        .background(.white)
        .cornerRadius(8)
    }
}

#Preview {
    CardDoctor(users: DoctorsModel.preview)
}
