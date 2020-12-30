//
//  BackView.swift
//  Home Gym
//
//  Created by Sofi on 29.12.2020.
//

import SwiftUI
import SwiftyJSON
import Alamofire

struct BackView: View {
    @ObservedObject var gimVeiwModel = GimViewModel()
    @Binding var Swift22:Int
    @Binding var nam:String
   
    var body: some View {
        Button(action: {
           
            gimVeiwModel.signOut(username: String("\(nam)"))
           
            if nam != ""{
                Swift22 = 1
                
            } else  {
                Swift22 = 2
            }
           
        }, label: {
            Text("Back")
                .font(.custom("ND Astroneer", size: 50))
                .foregroundColor(Color("bu"))
        })
        
    }
}

//struct BackView_Previews: PreviewProvider {
//    static var previews: some View {
//        BackView()
//    }
//}
