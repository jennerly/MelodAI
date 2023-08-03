//
//  calmView.swift
//  MelodAI
//
//  Created by scholar on 8/2/23.
//

import SwiftUI

struct CalmView: View {
    @State private var calmSongArray = false
    @State private var calmPodcastArray = false
    @State private var calmNoiseArray = false
    var body: some View {
        NavigationStack{
            ZStack {
                Image("blueToOrange")
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
                    Text("Calm")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                        .foregroundColor(Color("customDarkBlue"))
                        
                    HStack(spacing: 20){
                        Button("Songs") {
                            calmSongArray = true
                            calmPodcastArray = false
                            calmNoiseArray = false
                        } //songs
                        
                        Button("Podcasts") {
                            calmPodcastArray = true
                            calmSongArray = false
                            calmNoiseArray = false
                        } //podcasts
                        
                        Button("Noises") {
                            calmNoiseArray = true
                            calmSongArray = false
                            calmPodcastArray = false
                        } //noise
                    } //hstack
                    .padding()
                    .foregroundColor(Color("customDarkBlue"))
                    
                    Spacer()
                    if calmSongArray == true {
                        List {
                            Text("Weightless (1 & 2) - Marconi Union")
                            Text("Majesty - Dexter Britain")
                            Text("The Secret Life of Daydreams - Dario Marianelli")
                            Text("Lotus - Eskimotion")
                            Text("Intro (delirium) - Ellie Goulding")
                            Text("Aqueous transmission - incubus")
                        }
                    } else if calmPodcastArray == true {
                        List {
                            Text("Meditaaccion")
                            Text("Pretti subliminals")
                            Text("Sol Good Sounds")
                            Text("Relax with Yogi Bryan Meditations")
                            Text("Pass Around the Smile")
                        }
                    } else if calmNoiseArray == true {
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

struct CalmView_Previews: PreviewProvider {
    static var previews: some View {
        CalmView()
    }
}
