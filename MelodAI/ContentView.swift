//
//  ContentView.swift
//  MelodAI
//
//  Created by scholar on 8/1/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color("customDarkBlue")
                    .ignoresSafeArea()
                VStack(spacing: 10) {
                    Text("MelodAI")
                        .font(.title)
                        
                    Text("The app that uses AI, neuroscience, and music for the betterment of mental health")
                        .font(.body)
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 20.0)
                        .padding(.bottom, 20)
                    HStack (spacing: 10){
                        Button("Login") {
                            /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                        }
                        Button("Signup") {
                            /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                        }
                    } // hstack
                    .foregroundColor(Color("customDarkBlue"))
                    VStack {
                        TextField("Email or username", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                            .padding( 10.0)
                        TextField("Password", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                            .padding(10.0)
                    } //vstack for login
                    .background(Color(red: /*@START_MENU_TOKEN@*/0.134/*@END_MENU_TOKEN@*/, green: /*@START_MENU_TOKEN@*/0.621/*@END_MENU_TOKEN@*/, blue: /*@START_MENU_TOKEN@*/0.739/*@END_MENU_TOKEN@*/))
                    .cornerRadius(20)
                    .shadow(color: Color("customDarkBlue"), radius: 3)
                    .padding(.all, 20.0)
                    NavigationLink(destination: HomeView()) {
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
