//
//  Service.swift
//  ListDoctors
//
//  Created by Amina TomasMart on 19.04.2024.
//

import Foundation

class Service {
    
    //https://api.jsonbin.io/v3/b/655b754e0574da7622c94aa4
    
    func getDoctors(completion: @escaping ([Users]) -> ()) {
        var urlComponents = URLComponents()
        urlComponents.scheme = "https"
        urlComponents.host = "api.jsonbin.io"
        urlComponents.path = "/v3/b/655b754e0574da7622c94aa4"
        
        guard let url = urlComponents.url else {return}
        let req = URLRequest(url: url)
        URLSession.shared.dataTask(with: req) { data, response, error in
            guard let data = data, error == nil else {
                print(error!.localizedDescription)
                return
            }
            
            do {
                let data = data
                let jsonData = try JSONDecoder().decode(Doctors.self, from: data)
                DispatchQueue.main.async {
                    completion(jsonData.record.data.users)
                }
                print(jsonData)
            } catch {
                print(error.localizedDescription)
            }
        }.resume()
    }
}
