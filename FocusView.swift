//
//  focusView.swift
//  MelodAI
//
//  Created by scholar on 8/2/23.
//

import SwiftUI

struct FocusView: View {
    @State private var focusSongArray = false
    @State private var focusPodcastArray = false
    @State private var focusNoiseArray = false
    var body: some View {
        NavigationStack{
            ZStack {
                Image("orangeToBlue")
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
                    Text("Focus")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                        .foregroundColor(Color("customDarkBlue"))
                        
                    HStack(spacing: 20){
                        Button("Songs") {
                            focusSongArray = true
                            focusPodcastArray = false
                            focusNoiseArray = false
                        } //songs
                        
                        Button("Podcasts") {
                            focusPodcastArray = true
                            focusSongArray = false
                            focusNoiseArray = false
                        } //podcasts
                        
                        Button("Noises") {
                            focusNoiseArray = true
                            focusSongArray = false
                            focusPodcastArray = false
                        } //noise
                    } //hstack
                    .padding()
                    .foregroundColor(Color("customDarkBlue"))
                    
                    Spacer()
                    if focusSongArray == true {
                        List {
                            Text("Deep Phase Noise 1 - Milli Hughes")
                            Text("Every Night White Noise - The Noisy Outdoors")
                            Text("Rumore Bianco - Relaxed Minds")
                            Text("Suoni Del Cielo - Molecualar Binary")
                            Text("Dreams & Clamness - X.L.T")
                            Text("Quantum White - Aileron")
                            Text("Tranquility - Somnolence")
                            Text("Tranquil White Noise - Panoramia")
                        }
                    } else if focusPodcastArray == true {
                        List {
                            Text("The Tim Ferriss Show")
                            Text("The Productivityist Podcast")
                            Text("Getting Things Done")
                            Text("Achieve Your Goals with Hal Elrod")
                            Text("Happier with Gretchen Rubin")
                        }
                    } else if focusNoiseArray == true {
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
                            Text("📚")
                                .font(.largeTitle)
                        } //close profile
                    } // closing toolbaritemgroup
                } // closing tool bar
            } //closing nav stack
            .toolbarBackground(Color.pink, for: .navigationBar)

        } //closing zstack
        
    } //closing someview
} //closing struct

struct FocusView_Previews: PreviewProvider {
    static var previews: some View {
        FocusView()
    }
}
