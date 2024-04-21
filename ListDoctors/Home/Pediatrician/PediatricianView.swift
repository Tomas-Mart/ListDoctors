//
//  PediatricianView.swift
//  ListDoctors
//
//  Created by Amina TomasMart on 18.04.2024.
//

import SwiftUI

struct PediatricianView: View {
    var users: Users
    @Environment(\.dismiss) var dismiss
    var model: [DetailsModel] = DetailsModel.getDetailsModel()
    var body: some View {
        ZStack {
            Color.fon.ignoresSafeArea(edges: .top)
                .navigationBarTitle("Педиатр", displayMode: .inline)
            VStack(alignment: .leading)  {
                
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
                
                VStack(alignment: .leading, spacing: 20) {
                    
                    ForEach(model, id: \.self) { item in
                        DetailsDoc(image: item.image, text: item.text)
                    }
                }
                .padding()
                .foregroundStyle(.gray)
                
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
    PediatricianView(users: DoctorsModel.preview, model: DetailsModel.getDetailsModel())
}
