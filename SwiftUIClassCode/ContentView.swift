//
//  ContentView.swift
//  SwiftUIClass
//
//  Created by Juliana Vigato Pavan on 09/06/20.
//  Copyright © 2020 Juliana Vigato Pavan. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var username: String = ""
    @State private var password: String = ""
    let color: Color = Color(red: 0.34, green: 0.10, blue: 0.81)
    
    var body: some View {
        VStack{
            ZStack {
                Image("background")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .edgesIgnoringSafeArea(.all)
                
                VStack(alignment: .leading) {
                    
                    VStack(alignment: .leading ) {
                        Text("Login")
                            .foregroundColor(.white)
                            .font(.title)
                            .fontWeight(.bold)
                            .padding(.top, 20)
                            .padding(.leading,10)
                            
                        
                        Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris condimentum ultricies nisl!")
                            .foregroundColor(.white)
//                            .padding(.bottom,40)
                            .padding(.top, 20)
                            .padding(.leading,10)
                            .padding(.trailing,0)
                            
//                            .frame(width: 380)
                    }.padding(.bottom,30)
                    
                    VStack(alignment: .leading){
                        Text("Email")
                            .foregroundColor(.white)
                            .padding(.leading,40)
                            .padding(.top,30)
                        
                        TextField("Input Text", text: self.$username)
                            .padding(15)
                            .foregroundColor(.white)
                            .border(Color.white, width: 5)
                            .cornerRadius(5)
                            .padding(10)
                            .contrast(/*@START_MENU_TOKEN@*/30.0/*@END_MENU_TOKEN@*/)
                            .colorScheme(.dark)
                            

                        Text("Password")
                            .foregroundColor(.white)
                            .padding(.leading,40)
                            .padding(.top,20)
                        
                        TextField("Input Text", text: self.$username)
                            .padding(15)
                            .foregroundColor(.white)
                            .border(Color.white, width: 5)
                            .cornerRadius(5)
                            .padding(10)
                            .contrast(30)
                            .colorScheme(.dark)
                    }
                    
                    VStack(alignment: .trailing){
                        Button(action: { print("lets sign in") }) {
                            Text("Sign in")
                                .padding()
                                .foregroundColor(color)
                                .background(Color.white)
                                .padding(.top,20)
//                                .padding(.leading,280)
                        }
                        
                        Button(action: { print("") }) {
                            Text("Forgot your password?")
                            .padding()
                            .foregroundColor(.yellow)
                            
                        }
                    }.padding(.leading,190)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
//        ForEach(["iPhone XS Max"], id: \.self) { deviceName in             ContentView()                 .previewDevice(PreviewDevice(rawValue: deviceName))                 .previewDisplayName(deviceName)
//        }
    }
}
