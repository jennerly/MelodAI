//
//  mindfulView.swift
//  MelodAI
//
//  Created by scholar on 8/2/23.
//

import SwiftUI

struct MindfulView: View {
    @State private var mindfulSongArray = false
    @State private var mindfulPodcastArray = false
    @State private var mindfulNoiseArray = false
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
                    Text("Mindful")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                        .foregroundColor(Color("customDarkBlue"))
                        
                    HStack(spacing: 20){
                        Button("Songs") {
                            mindfulSongArray = true
                            mindfulPodcastArray = false
                            mindfulNoiseArray = false
                        } //songs
                        
                        Button("Podcasts") {
                            mindfulPodcastArray = true
                            mindfulSongArray = false
                            mindfulNoiseArray = false
                        } //podcasts
                        
                        Button("Noises") {
                            mindfulNoiseArray = true
                            mindfulSongArray = false
                            mindfulPodcastArray = false
                        } //noise
                    } //hstack
                    .padding()
                    .foregroundColor(Color("customDarkBlue"))
                    
                    Spacer()
                    if mindfulSongArray == true {
                        List {
                            Text("Weightless (1 & 2) - Marconi Union")
                            Text("Majesty - Dexter Britain")
                            Text("The Secret Life of Daydreams - Dario Marianelli")
                            Text("Lotus - Eskimotion")
                            Text("Intro (delirium) - Ellie Goulding")
                            Text("Aqueous transmission - incubus")
                        }
                    } else if mindfulPodcastArray == true {
                        List {
                            Text("Black People Love Paramore")
                            Text("Become Your Own Sanctuary")
                            Text("The Internet Said So")
                            Text("Giggly Squad")
                            Text("De-Influenced with Dani Austin")
                            Text("Chaotic Advice We Learned in Our 20's")
                            Text("Anything goes with Emma Chamberlain")
                            Text("Oversharing")
                        }
                    } else if mindfulNoiseArray == true {
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

struct MindfulView_Previews: PreviewProvider {
    static var previews: some View {
        MindfulView()
    }
}
