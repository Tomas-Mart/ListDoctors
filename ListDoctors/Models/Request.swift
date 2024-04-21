//
//  Request.swift
//  ListDoctors
//
//  Created by Amina TomasMart on 21.04.2024.
//

import Foundation

struct Doctors: Decodable, Hashable {
    let record: Record
}

struct Record: Decodable, Hashable {
    let data: DataJS
}

struct DataJS: Decodable, Hashable {
    let users: [Users]
}

struct Users: Decodable, Hashable, Identifiable {
    let id: String?
    let slug: String?
    let firstName: String?
    let patronymic: String?
    let lastName: String?
    let gender: String?
    let genderLabel: String?
    let ratingsRating: Double?
    let seniority: Int?
    let textChatPrice: Int?
    let videoChatPrice: Int?
    let homePrice: Double?
    let hospitalPrice: Int?
    let avatar: String?
    let nearestReceptionTime: Double?
    let rank: Int?
    let rankLabel: String?
    let scientificDegree: Int?
    let scientificDegreeLabel: String?
    let category: Double?
    let categoryLabel: String?
    let isFavorite: Bool?
    let specialization: [Specialization]
    let ratings: [Ratings]
    let freeReceptionTime: [FreeReceptionTime]
    let educationTypeLabel: EducationTypeLabel?
    let higherEducation: [HigherEducation]
    let workExpirience: [WorkExpirience]
    let advancedTraining: [AdvancedTraining]
    
    enum CodingKeys: String, CodingKey {
        case id, slug, patronymic, gender, specialization, ratings, seniority, avatar, rank, category
        case firstName = "first_name"
        case lastName = "last_name"
        case genderLabel = "gender_label"
        case ratingsRating = "ratings_rating"
        case textChatPrice = "text_chat_price"
        case videoChatPrice = "video_chat_price"
        case homePrice = "home_price"
        case hospitalPrice = "hospital_price"
        case nearestReceptionTime = "nearest_reception_time"
        case rankLabel = "rank_label"
        case scientificDegree = "scientific_degree"
        case scientificDegreeLabel = "scientific_degree_label"
        case categoryLabel = "category_label"
        case isFavorite = "is_favorite"
        case freeReceptionTime = "free_reception_time"
        case educationTypeLabel = "education_type_label"
        case higherEducation = "higher_education"
        case workExpirience = "work_expirience"
        case advancedTraining = "advanced_training"
    }
}

struct Specialization: Decodable, Hashable {
    let id: Int?
    let name: String?
    let isModerated: Bool?
    
    enum CodingKeys: String, CodingKey {
        case id, name
        case isModerated = "is_moderated"
    }
}

struct Ratings: Decodable, Hashable {
    let id: Int?
    let name: String?
    let value: Double?
}

struct FreeReceptionTime: Decodable, Hashable {
    let time: Int?
}

struct EducationTypeLabel: Decodable, Hashable {
    let id: Int?
    let name: String?
}

struct HigherEducation: Decodable, Hashable {
    let id: Int?
    let university: String?
    let specialization: String?
    let qualification: String?
    let startDate: Int?
    let endDate: Int?
    let untilNow: Bool?
    let isModerated: Bool?
    
    enum CodingKeys: String, CodingKey {
        case id, university, specialization, qualification
        case startDate = "start_date"
        case endDate = "end_date"
        case untilNow = "until_now"
        case isModerated = "is_moderated"
    }
}

struct WorkExpirience: Decodable, Hashable {
    let id: Int?
    let organization: String?
    let position: String?
    let startDate: Int?
    let endDate: Int?
    let untilNow: Bool?
    let isModerated: Bool?
    
    enum CodingKeys: String, CodingKey {
        case id, organization, position
        case startDate = "start_date"
        case endDate = "end_date"
        case untilNow = "until_now"
        case isModerated = "is_moderated"
    }
}

struct AdvancedTraining: Decodable, Hashable {
    let id: Int?
    let organization: String?
    let position: String?
    let endDate: Int?
    let file: String?
    let isModerated: Bool?
    
    enum CodingKeys: String, CodingKey {
        case id, organization, position, file
        case endDate = "end_date"
        case isModerated = "is_moderated"
    }
}
