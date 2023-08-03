//
//  sleepyView.swift
//  MelodAI
//
//  Created by scholar on 8/2/23.
//

import SwiftUI

struct SleepyView: View {
    @State private var sleepySongArray = false
    @State private var sleepyPodcastArray = false
    @State private var sleepyNoiseArray = false
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
                    Text("Sleep")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                        .foregroundColor(Color("customDarkBlue"))
                        
                    HStack(spacing: 20){
                        Button("Songs") {
                            sleepySongArray = true
                            sleepyPodcastArray = false
                            sleepyNoiseArray = false
                        } //songs
                        
                        Button("Podcasts") {
                            sleepyPodcastArray = true
                            sleepySongArray = false
                            sleepyNoiseArray = false
                        } //podcasts
                        
                        Button("Noises") {
                            sleepyNoiseArray = true
                            sleepySongArray = false
                            sleepyPodcastArray = false
                        } //noise
                    } //hstack
                    .padding()
                    .foregroundColor(Color("customDarkBlue"))
                    
                    Spacer()
                    if sleepySongArray == true {
                        List {
                            Text("Weightless (1 & 2) - Marconi Union")
                            Text("Electra - Airstream")
                            Text("Mellomaniac (Chill Out Mix) - DJ Shah")
                            Text("Watermark - Enya")
                            Text("Strawberry Swing - Coldplay")
                            Text("Please Don't Go - Barcelona")
                            Text("Someone Like You - Adele")
                            Text("Canzonetta Sull'aria - Mozart")
                        }
                    } else if sleepyPodcastArray == true {
                        List {
                            Text("Get Sleepy")
                            Text("Sleep with Me")
                            Text("Game of Drones")
                            Text("Nothing Much Happens")
                            Text("Slow Radio")
                            Text("Sleep Whispers")
                        }
                    } else if sleepyNoiseArray == true {
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

struct SleepyView_Previews: PreviewProvider {
    static var previews: some View {
        SleepyView()
    }
}
