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
                    
                } .background(Color(hue: 0.555, saturation: 0.042, brightness: 0.958)) .cornerRadius(20) .padding(.horizontal, 20) .shadow(color: Color("ShadowDarkBlue"), radius: 50)
                .toolbar {
                    ToolbarItemGroup(placement: .status){
                        NavigationLink(destination: HomeView()) {
                            Text("Next")
                                .padding(.horizontal)
                                .background(Color(red: 0.124, green: 0.318, blue: 0.141))
                                .foregroundColor(Color(red: 0.458, green: 0.817, blue: 0.48))
                                .cornerRadius(10)
                        } // homeview
                    } // toolbaritemgroup
                } // toolbar
            } // zstack
        } // nav stack
    } // var body view
} // struct view
        
        
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
