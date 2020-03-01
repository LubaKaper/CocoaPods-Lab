//
//  UserAPIClient.swift
//  CocoaPods-Lab
//
//  Created by Liubov Kaper  on 3/1/20.
//  Copyright © 2020 Luba Kaper. All rights reserved.
//

import Foundation
import Alamofire
import NetworkHelper

struct UserAPIclient {
    
    static func getUsers(completion: @escaping (AFResult<[User]>) ->()) {
      let urlString =  "https://randomuser.me/api/?results=50"
        guard let url = URL(string: urlString) else {
            
            return
        }
        AF.request(url).response { response in
            if let error = response.error {
                completion(.failure(error))
            } else if let data = response.data {
                do {
                    let userData = try JSONDecoder().decode(ResultsWrapper.self, from: data)
                    let users = userData.results
                    completion(.success(users))
                } catch {
                    print("\(error)")
                }
            }
            
        }
        
    }
}

