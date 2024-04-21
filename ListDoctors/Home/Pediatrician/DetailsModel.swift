//
//  DetailsModel.swift
//  ListDoctors
//
//  Created by Amina TomasMart on 20.04.2024.
//

import Foundation

struct DetailsModel: Hashable {
    var image: String
    var text: String
    
    static func getDetailsModel() -> [DetailsModel] {
        
        let model1 = DetailsModel(image: "Time", text: "Опыт работы: 27 лет")
        
        let model2 = DetailsModel(image: "Bag", text: "Врач высшей категории")
        
        let model3 = DetailsModel(image: "Hat", text: "1-й ММИ им. И.М.Сеченова")
        
        let model4 = DetailsModel(image: "Loc", text: "Детская клиника “РебёнОК”")
        
        return [model1, model2, model3, model4]
    }
}
