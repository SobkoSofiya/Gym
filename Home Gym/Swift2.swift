//
//  Swift2.swift
//  Home Gym
//
//  Created by Sofi on 29.12.2020.
//

import Foundation
import SwiftUI

struct Swift2: View {
    @State var Swift22: Int = 1
    var body: some View {
    
        if Swift22 == 1{
            GymViewSignIn(Swift22: $Swift22)
        }
        else if Swift22 == 2{
            GymView(Swift22: $Swift22)
        }
        else if Swift22 == 3{
            BackView(Swift22: $Swift22)
        }
    
    
    
    
    
    
}
}


