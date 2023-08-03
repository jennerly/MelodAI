//
//  happyView.swift
//  MelodAI
//
//  Created by scholar on 8/2/23.
//

import SwiftUI

struct HappyView: View {
    @State private var happySongArray = false
    @State private var happyPodcastArray = false
    @State private var happyNoiseArray = false
    var body: some View {
        NavigationStack{
            ZStack {
                Image("orange")
                    .resizable(resizingMode: .stretch)
                    .ignoresSafeArea()
                VStack{
                    HStack{
                        Text("MelodAI")
                            .font(.title)
                            .foregroundColor(Color.white)
                        Spacer()
                        Text("👤 User")
                            .fontWeight(.regular)
                            .foregroundColor(Color.white)
                    } .padding()
                    Spacer()
                    Text("Happy")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                        .foregroundColor(Color("HotOrange"))
                        
                    HStack(spacing: 20){
                        Button("Songs") {
                            happySongArray = true
                            happyPodcastArray = false
                            happyNoiseArray = false
                        } //songs
                        
                        Button("Podcasts") {
                            happyPodcastArray = true
                            happySongArray = false
                            happyNoiseArray = false
                        } //podcasts
                        
                        Button("Noises") {
                            happyNoiseArray = true
                            happySongArray = false
                            happyPodcastArray = false
                        } //noise
                    } //hstack
                    .padding()
                    .foregroundColor(Color("HotOrange"))
                    
                    Spacer()
                    if happySongArray == true {
                        List {
                            Text("the drugs dont work - the verge")
                            Text("Robbie Williams - Angels")
                            Text("Elton John's - Sorry Seems to Be the Hardest Word")
                            Text("I Will Always Love - Whitney Houston")
                            Text("Nothing Compares 2 U - Sinead O'Connor")
                            Text("Leave Right Now - Will Young")
                            Text("Are You Lonesome Tonight? - Elvis Presley")
                            Text("Beautiful - Christina Aguilera")
                        }
                    } else if happyPodcastArray == true {
                        List {
                            Text("Sorry About The Kid")
                            Text("This American Life")
                            Text("Unread")
                            Text("Griefcast")
                            Text("Alligator Candy")
                            Text("Heavyweight")
                        }
                    } else if happyNoiseArray == true {
                        List {
                            Text("White noise")
                            Text("Pink noise")
                            Text("Brown noise")
                            Text("Blue noise")
                            Text("Green noise")
                            Text("Grey noise")
                            Text("Violet noise")
                        }
                    }
                } //vstack
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
                            Text("👤")
                                .font(.largeTitle)
                        } //close profile
                    } // closing toolbaritemgroup
                } // closing tool bar
            } //closing nav stack
            .toolbarBackground(Color.pink, for: .navigationBar)

        } //closing zstack
        
    } //closing someview
} //closing struct

struct HappyView_Previews: PreviewProvider {
    static var previews: some View {
        HappyView()
    }
}
