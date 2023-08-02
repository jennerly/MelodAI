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
                Image("darkBluetoLight")
                    .resizable(resizingMode: .stretch)
                    .ignoresSafeArea()
                VStack{
                    HStack{
                        Text("MelodAI")
                            .font(.title)
                        Spacer()
                        Text("User")
                            .fontWeight(.regular)
                    } .padding()
                    Spacer()
                    Text("Sad")
                    
                    HStack{
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
                    Spacer()
                    if sadSongArray == true {
                        List {
                            Text("song1")
                            Text("song2")
                            Text("song3")
                            Text("song4")
                            Text("song5")
                        }
                    } else if sadPodcastArray == true {
                        List {
                            Text("podcast1")
                            Text("podcast2")
                            Text("podcast3")
                            Text("podcast4")
                            Text("podcast5")
                        }
                    } else if sadNoiseArray == true {
                        List {
                            Text("noise1")
                            Text("noise2")
                            Text("noise3")
                            Text("noise4")
                            Text("noise5")
                            
                        }
                    }
                } //vstack
                .toolbar {
                    ToolbarItemGroup(placement: .status){
                        NavigationLink(destination: HomeView()) {
                            Text("🏠")
                                .font(.title)
                            Text("👤")
                        } // closing nav link
                    } // closing toolbaritemgroup
                } // closing tool bar
            } //closing nav stack
            .toolbarBackground(Color("HotOrange"), for: .navigationBar)
        } //closing zstack
    } //closing someview
} //closing struct

struct SadView_Previews: PreviewProvider {
    static var previews: some View {
        SadView()
    }
}
