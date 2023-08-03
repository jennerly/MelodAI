//
//  hypeView.swift
//  MelodAI
//
//  Created by scholar on 8/2/23.
//

import SwiftUI

struct HypeView: View {
    @State private var hypeSongArray = false
    @State private var hypePodcastArray = false
    @State private var hypeNoiseArray = false
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
                    Text("Hype")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                        .foregroundColor(Color("HotOrange"))
                        
                    HStack(spacing: 20){
                        Button("Songs") {
                            hypeSongArray = true
                            hypePodcastArray = false
                            hypeNoiseArray = false
                        } //songs
                        
                        Button("Podcasts") {
                            hypePodcastArray = true
                            hypeSongArray = false
                            hypeNoiseArray = false
                        } //podcasts
                        
                        Button("Noises") {
                            hypeNoiseArray = true
                            hypeSongArray = false
                            hypePodcastArray = false
                        } //noise
                    } //hstack
                    .padding()
                    .foregroundColor(Color("HotOrange"))
                    
                    Spacer()
                    if hypeSongArray == true {
                        List {
                            Text("Eye of the Tiger - Survivor")
                            Text("Right Now - Van Halen")
                            Text("Lose Yourself - Eminem")
                            Text("Champions - Ron Artest")
                            Text("Let It Rock: Kevin Rudolf Featuring Lil Wayne")
                            Text("Not Afraid - Eminem")
                            Text("Let's Get It Started - Black Eyed Peas")
                            Text("Stir Fry - Migos")
                        }
                    } else if hypePodcastArray == true {
                        List {
                            Text("Sorry About The Kid")
                            Text("This American Life")
                            Text("Unread")
                            Text("Griefcast")
                            Text("Alligator Candy")
                            Text("Heavyweight")
                        }
                    } else if hypeNoiseArray == true {
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

struct HypeView_Previews: PreviewProvider {
    static var previews: some View {
        HypeView()
    }
}
