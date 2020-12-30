//
//  GymView.swift
//  Home Gym
//
//  Created by Sofi on 29.12.2020.
//

import SwiftUI

struct GymView: View {
    @ObservedObject var gimVeiwModel = GimViewModel()
    @State var emali:String = ""
    @State var nam:String = ""
    @State var pass:String = ""
    @State var rePass:String = ""
    @State var mess: String = ""
    @State var alertError = false
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
                        .foregroundColor(Color("gray1"))
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
                    Image("o")
                        .resizable()
                        .frame(width: 20   , height: 14, alignment: .center)
                        .padding()
                        .padding(.leading,50)
                    Rectangle()
                        .frame(width: 0.5 , height: 50, alignment: .center)
                        .opacity(5)
                    TextField("Ivanov", text: $emali)
                                .font(.custom("ND Astroneer", size: 24))
                                .foregroundColor(Color("gray1"))
                                .padding(.trailing, 185)
                                .padding(.leading,5)
                }
                
            }
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
                    TextField("●●●●●●", text: $pass)
                        .font(.custom("ND Astroneer", size: 17))
                        .foregroundColor(Color("gray2"))
                        .padding(.trailing, 68)
                        .padding(.leading,13)
                        
                }
                
            }
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
                                TextField("●●●●●●", text: $rePass)
                                    .font(.custom("ND Astroneer", size: 17))
                                    .foregroundColor(Color("gray2"))
                                    .padding(.trailing, 68)
                                    .padding(.leading,13)
                                    
                            }
                            
                        }
                    }.padding(.bottom,80)
                    VStack(spacing: 70){
                        Button(action: {
                            if emali != "" && nam != "" && pass != "" && rePass != "" {
                                if emali.contains("@") {
                                    if pass == rePass{
                                        gimVeiwModel.signUp(username: "\(nam)", password: "\(pass)", email: "\(emali)")
                                        Swift22 = 1
                                    } else {
                                        mess = "passwords don't match"
                                        alertError.toggle()
                                    }
                                    
                                } else {
                                    mess = "Incorrect email"
                                    alertError.toggle()
                                }
                                
                                
                            } else {
                                mess = "Enter all fields"
                                alertError.toggle()
                            }
//                            Swift22=2
                        }, label: {
                            Text("Sign Up")
                                .font(.custom("ND Astroneer", size: 24))
                                .foregroundColor(Color("bu"))
                                .frame(width: 312, height: 50, alignment: .center)
                                .background(Color.white)
                        }).alert(isPresented: $alertError, content: {
                            Alert(title: Text("Error"), message: Text("\(mess)"), dismissButton: .default(Text("OK")))
                        })
            
                
             
                
                
                        
                        Button(action: {
                            Swift22=1
                        }, label: {
                            Text("Back")
                                .font(.custom("ND Astroneer", size: 16))
                                .underline()
                                .foregroundColor(.white)
                        })
            
            Spacer()
                    }
            
                }
        }
            
        }.edgesIgnoringSafeArea(.all)
    }
    
    
}




//struct GymView_Previews: PreviewProvider {
//    static var previews: some View {
//        GymView()
//    }
//}
