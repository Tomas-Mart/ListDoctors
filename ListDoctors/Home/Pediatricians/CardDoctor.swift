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
                    VStack(alignment: .leading, spacing: 15) {
                        VStack(alignment: .leading, spacing: 5) {
                            Text(users.lastName ?? "")
                            Text((users.firstName ?? "") + " " + (users.patronymic ?? ""))
                        }
                        VStack(alignment: .leading, spacing: 10) {
                            HStack {
                                StarsView(rating: CGFloat(users.ratingsRating ?? 0), maxRating: 5)
                            }
                            switch users.seniority {
                            case 0:
                                Text(("\(users.specialization.last?.name ?? "Терапевт")") + "・" + ("нет стажа"))
                                    .foregroundStyle(.gray)
                            case 1:
                                Text(("\(users.workExpirience.last?.position ?? "Лор")") + "・" + ("стаж \(users.seniority ?? 0) год"))
                                    .foregroundStyle(.gray)
                            case 2, 3, 4:
                                Text(("\(users.specialization.last?.name ?? "Гинеколог")") + "・" + ("стаж \(users.seniority ?? 0) года"))
                                    .foregroundStyle(.gray)
                            default:
                                Text(("\(users.workExpirience.last?.position ?? "Уролог")") + "・" + ("стаж \(users.seniority ?? 0) лет"))
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
        .background(.white)
        .cornerRadius(8)
    }
}
#Preview {
    CardDoctor(users: DoctorsModel.preview)
}
