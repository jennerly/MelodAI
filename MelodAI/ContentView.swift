//
//  ContentView.swift
//  MelodAI
//
//  Created by scholar on 8/1/23.
//

import SwiftUI

struct ContentView: View {
    @State private var username = ""
    @State private var password = ""
    @State private var enterUsername = "Username or email"
    @State private var enterPassword = "Enter password"
    var body: some View {
        NavigationStack {
            ZStack {
                Color("customDarkBlue")
                    .ignoresSafeArea()
                VStack(spacing: 10) {
                    Image("icon")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                    Text("MelodAI")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                        .foregroundColor(Color("HotOrange"))
                    Text("The app that uses AI, neuroscience, and music for the betterment of mental health")
                        .font(.body)
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 20.0)
                        .padding(.bottom, 20)
                    HStack (spacing: 10){
                        Button("Login") {
                            enterUsername = "Username or email"
                            enterPassword = "Enter password"
                        }
                        Button("Signup") {
                            enterUsername = "Create username or enter email"
                            enterPassword = "Create password"
                        }
                    } // hstack
                    .foregroundColor(Color("customDarkBlue"))
                    VStack {
                        TextField(enterUsername, text: $username)
                            .padding( 10.0)
                        TextField(enterPassword, text: $password)
                            .padding(10.0)
                    } //vstack for login
                    .background(Color(red: /*@START_MENU_TOKEN@*/0.134/*@END_MENU_TOKEN@*/, green: /*@START_MENU_TOKEN@*/0.621/*@END_MENU_TOKEN@*/, blue: /*@START_MENU_TOKEN@*/0.739/*@END_MENU_TOKEN@*/))
                    .cornerRadius(20)
                    .shadow(color: Color("customDarkBlue"), radius: 3)
                    .padding(.all, 20.0)
                    NavigationLink(destination: FeelView()) {
                        Text("Login")
                            .padding(.all, 10.0)
                            .background(Color("MediumBlue"))
                            .foregroundColor(Color("customDarkBlue"))
                            .cornerRadius(10)
                            .shadow(radius: 10)
                    } // homeview
                    .padding(.bottom, 20)
                } .background(Color(hue: 0.555, saturation: 0.042, brightness: 0.958)) .cornerRadius(20) .padding(.horizontal, 20) .shadow(color: Color("ShadowDarkBlue"), radius: 50)
            } // zstack
        } // nav stack
    } // var body view
} // struct view
        
        
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
