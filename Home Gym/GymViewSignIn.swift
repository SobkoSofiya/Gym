//
//  GymViewSignIn.swift
//  Home Gym
//
//  Created by Sofi on 29.12.2020.
//

import SwiftUI

struct GymViewSignIn: View {
    @ObservedObject var gimVeiwModel = GimViewModel()
    @State var nam:String = ""
    @State var pass:String = ""
    @Binding var Swift22:Int
    var body: some View {
        ZStack{
            Rectangle()
                .foregroundColor(Color("bu"))
            VStack(spacing:0){
            
            Image("Strong")
                .resizable()
                .frame(width: 179, height: 179, alignment: .center)
                .padding(.top, 70)
            Text("Home")
                .font(.custom("ND Astroneer", size: 50))
                .foregroundColor(.white)
            Text("Gym")
                .font(.custom("ND Astroneer", size: 50))
                .foregroundColor(.white)
                VStack{
                    VStack(spacing: 10){
                        ZStack{
                            Rectangle()
                                .frame(width: 312, height: 50, alignment: .center)
                                .foregroundColor(.white)
                                .cornerRadius(25)
                            HStack(spacing: 0){
                                Image("i")
                                    .resizable()
                                    .frame(width: 15.8, height: 14.6, alignment: .center)
                                    .padding()
                                    .padding(.leading,55)
                                Rectangle()
                                    .frame(width: 0.5 , height: 50, alignment: .center)
                                    .opacity(5)
                                TextField("Ivanov", text: $nam)
                                    .font(.custom("ND Astroneer", size: 24))
                                    .foregroundColor(.gray)
                                    .padding(.trailing, 185)
                                    .padding(.leading,5)
                                    
                            }
                            
                        }.padding(.top,25)
            
           
                        ZStack{
                            Rectangle()
                                .frame(width: 312, height: 50, alignment: .center)
                                .foregroundColor(.white)
                                .cornerRadius(25)
                            HStack(spacing: 0){
                                Image("p")
                                    .resizable()
                                    .frame(width: 15.2   , height: 17.9, alignment: .center)
                                    .padding()
                                    .padding(.leading, 55)
                                Rectangle()
                                    .frame(width: 0.5 , height: 50, alignment: .center)
                                    .opacity(5)
                                TextField("\(Image("q"))", text: $pass)
                                    
                                    .padding(.trailing, 186)
                                    .padding(.leading,15)
                                    
                            }
                            
                        }
                    }.padding(.bottom,30)
                    VStack(spacing: 80){
                        VStack(spacing: 15){
                            
                            Button(action: {
                                gimVeiwModel.signIn(username: String("\(nam)"), password: String("\(pass)"))
                                if   gimVeiwModel.perehod == 3 {
                                    Swift22 = 3
                                }
                                
                            }, label: {
                                Text("Sign In")
                                    .font(.custom("ND Astroneer", size: 24))
                                    .foregroundColor(Color("bu"))
                                    .frame(width: 312, height: 50, alignment: .center)
                                    .background(Color.white)
                            })
           
                            Button(action: {
                                Swift22=2
                            }, label: {
                                Text("Sign Up")
                                    .font(.custom("ND Astroneer", size: 24))
                                    .foregroundColor(.white)
                                    .underline()
                            })
                        
                        
                        }
                       
                    
            Text("Skip")
                .font(.custom("ND Astroneer", size: 16))
                .underline()
                .foregroundColor(.white)
            Spacer()
                    }
            
                }
            }.padding(.top, 100)
            
        }.edgesIgnoringSafeArea(.all)
    }
}

//struct GymViewSignIn_Previews: PreviewProvider {
//    static var previews: some View {
//        GymViewSignIn()
//    }
//}
