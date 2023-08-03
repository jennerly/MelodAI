//
//  FeelView.swift
//  MelodAI
//
//  Created by scholar on 8/2/23.
//

import SwiftUI

struct FeelView: View {
    var body: some View {
        NavigationStack{
            ZStack{
                Image("orangeToBlue")
                    .resizable(resizingMode: .stretch)
                    .ignoresSafeArea()
                VStack{
                    HStack{
                        Text("MelodAI")
                            .font(.title)
                            .fontWeight(.semibold)
                            .foregroundColor(Color.white)
                        Spacer()
                        Text("👤 User")
                            .font(.title2)
                            .fontWeight(.semibold)
                            .foregroundColor(Color.white)
                    } .padding()
                    Spacer(minLength: 75)
                    Text("How do you want to feel?")
                        .padding()
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundColor(Color("HotOrange"))
                    VStack(spacing: 20){
                        HStack(spacing: 20){
                            NavigationLink(destination: CalmView()) {
                                Text("😌")
                                    .padding(.all, 30)
                                    .background(Color("LightBlue"))
                                    .cornerRadius(100)
                                    .shadow(radius: 10)
                            } // sadview
                            NavigationLink(destination: SleepyView()) {
                                Text("😴")
                                    .padding(.all, 30)
                                    .background(Color("LightBlue"))
                                    .cornerRadius(100)
                                    .shadow(radius: 10)
                            } // sadview
                            NavigationLink(destination: FocusView()) {
                                Text("🧘🏾‍♀️")
                                    .padding(.all, 30)
                                    .background(Color("LightBlue"))
                                    .cornerRadius(100)
                                    .shadow(radius: 10)
                            } // sadview
                        }
                        HStack(spacing: 20) {
                            NavigationLink(destination: HypeView()) {
                                Text("😜")
                                    .padding(.all, 30)
                                    .background(Color("LightBlue"))
                                    .cornerRadius(100)
                                    .shadow(radius: 10)
                            } // sadview
                            NavigationLink(destination: MindfulView()) {
                                Text("🧠")
                                    .padding(.all, 30)
                                    .background(Color("LightBlue"))
                                    .cornerRadius(100)
                                    .shadow(radius: 10)
                            } // sadview
                            NavigationLink(destination: HappyView()) {
                                Text("😊")
                                    .padding(.all, 30)
                                    .background(Color("LightBlue"))
                                    .cornerRadius(100)
                                    .shadow(radius: 10)
                            } // happyview
                        }
                        HStack(spacing: 20) {
                            NavigationLink(destination: VengefulView()) {
                                Text("😡")
                                    .padding(.all, 30)
                                    .background(Color("LightBlue"))
                                    .cornerRadius(100)
                                    .shadow(radius: 10)
                            } // sadview
                            NavigationLink(destination: SadView()) {
                                Text("😥")
                                    .padding(.all, 30)
                                    .background(Color("LightBlue"))
                                    .cornerRadius(100)
                                    .shadow(radius: 10)
                            } // sadview
                            NavigationLink(destination: CustomView()) {
                                Text("➕")
                                    .padding(.all, 30)
                                    .background(Color("LightBlue"))
                                    .cornerRadius(100)
                                    .shadow(radius: 10)
                            } // sadview
                        }
                        Spacer()
                    }.font(.largeTitle)
                        .toolbar {
                            ToolbarItemGroup(placement: .status){
                                NavigationLink(destination: FeelView()) {
                                    Text("🏠")
                                        .font(.largeTitle)
                                } // close home
                                NavigationLink(destination:
                                                ThreadView()){
                                    Text("📃")
                                        .font(.largeTitle)
                                } //close thread
                                NavigationLink(destination:
                                                ProfileView()){
                                    Text("👥")
                                        .font(.largeTitle)
                                } //close profile
                            } // closing toolbaritemgroup
                        } // closing tool bar
                }
            }
        }
    }
}

struct FeelView_Previews: PreviewProvider {
    static var previews: some View {
        FeelView()
    }
}
