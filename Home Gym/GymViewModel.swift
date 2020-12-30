//
//  GymViewModel.swift
//  Home Gym
//
//  Created by Sofi on 29.12.2020.
//

import Foundation
import SwiftUI
import SwiftyJSON
import Alamofire

class GimViewModel:ObservableObject{
    
    @Published var gym: [GimModel] = []
    @Published var perehod = 0
    
    
    func signUp (username:String, password:String, email:String){
        
        let url = "http://gym.areas.su/signup?username=\(username)&email=\(password)&password=\(email)&weight=40&height=170"
        
        AF.request(url, method: .post).validate().responseJSON {[self] response in
            switch response.result {
            case .success(let value):
                let json = JSON(value)
                print("JSON: \(json)")
                self.gym.append(GimModel(username: "\(username)", email: "\(email)", password: "\(password)", weight: "40", height: "170"))
                
            case .failure(let error):
                print(error)
            }
        }
    }
    
    func signIn (username: String, password: String)  {
        let url = "http://gym.areas.su/signin?username=\(username)&password=\(password)"
        
        AF.request(url, method: .post).validate().responseJSON { [self] response in
            switch response.result {
            case .success(let value):
                let json = JSON(value)
                if json["notice"]["token"].stringValue != "" {
                    perehod = 3
                } else if json["notice"]["answer"].stringValue == "User is active" {
                    perehod = 2
                } else if json["notice"]["answer"].stringValue == "Error username or password"{
                    perehod = 1
                }
                print("JSON: \(json)")
            case .failure(let error):
                print(error)
            }
        }
    }
    
    func signOut (username:String){
        
        let url = "http://gym.areas.su/signout?username=\(username)"
        
        AF.request(url, method: .post).validate().responseJSON { [self] response in
            switch response.result {
            case .success(let value):
                let json = JSON(value)
                print("JSON: \(json)")
                
            case .failure(let error):
                print(error)
            }
        }
    }
    
    
    
}







