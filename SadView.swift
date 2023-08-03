//
//  SadView.swift
//  MelodAI
//
//  Created by scholar on 8/2/23.
//

import SwiftUI

struct SadView: View {
    @State private var sadSongArray = false
    @State private var sadPodcastArray = false
    @State private var sadNoiseArray = false
    var body: some View {
        NavigationStack{
            ZStack {
                Image("blue")
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
                    Text("Sad")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                        .foregroundColor(Color("customDarkBlue"))
                        
                    HStack(spacing: 20){
                        Button("Songs") {
                            sadSongArray = true
                            sadPodcastArray = false
                            sadNoiseArray = false
                        } //songs
                        
                        Button("Podcasts") {
                            sadPodcastArray = true
                            sadSongArray = false
                            sadNoiseArray = false
                        } //podcasts
                        
                        Button("Noises") {
                            sadNoiseArray = true
                            sadSongArray = false
                            sadPodcastArray = false
                        } //noise
                    } //hstack
                    .padding()
                    .foregroundColor(Color("customDarkBlue"))
                    
                    Spacer()
                    if sadSongArray == true {
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
                    } else if sadPodcastArray == true {
                        List {
                            Text("Sorry About The Kid")
                            Text("This American Life")
                            Text("Unread")
                            Text("Griefcast")
                            Text("Alligator Candy")
                            Text("Heavyweight")
                        }
                    } else if sadNoiseArray == true {
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

struct SadView_Previews: PreviewProvider {
    static var previews: some View {
        SadView()
    }
}
