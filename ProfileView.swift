//
//  FeelView.swift
//  MelodAI
//
//  Created by scholar on 8/2/23.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        NavigationStack{
            ZStack{
                Image("white")
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

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
