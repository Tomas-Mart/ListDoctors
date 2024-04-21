//
//  DoctorsModel.swift
//  ListDoctors
//
//  Created by Amina TomasMart on 19.04.2024.
//

import Foundation

class DoctorsModel: ObservableObject {
    private let service = Service()
    @Published var data = [Users]()
    @Published var specialization = [Specialization]()
    init(){getAllDoctors()}
    
    private func getAllDoctors() {
        service.getDoctors() { users in
            self.data = users
        }
    }
    static let preview: Users = .init(
        id: "",
        slug: "",
        firstName: "Amina",
        patronymic: "Andreevna",
        lastName: "Tomas-Mart",
        gender: "0",
        genderLabel: "",
        ratingsRating: 5,
        seniority: 5,
        textChatPrice: 500,
        videoChatPrice: 1000,
        homePrice: 3000,
        hospitalPrice: 1500,
        avatar: "https://media.istockphoto.com/id/1372002650/photo/cropped-portrait-of-an-attractive-young-female-doctor-standing-with-her-arms-folded-in-the.jpg?s=1024x1024&w=is&k=20&c=HwRi4NnrK9aKEC27BkXnJJfuggGABNmqnnmXL7D9aBs=",
        nearestReceptionTime: 10,
        rank: 5,
        rankLabel: "",
        scientificDegree: 5,
        scientificDegreeLabel: "Врач высшей категории",
        category: 5,
        categoryLabel: "",
        isFavorite: true,
        specialization: [.init(id: 1, name: "Хирург", isModerated: true)],
        ratings: [.init(id: 2, name: "50", value: 5)],
        freeReceptionTime: [.init(time: 30)],
        educationTypeLabel: .init(id: 3, name: "1-й ММИ им. И.М.Сеченова"),
        higherEducation: [],
        workExpirience: [],
        advancedTraining: []
    )
}
