//
//  SadView.swift
//  MelodAI
//
//  Created by scholar on 8/2/23.
//

import SwiftUI

struct SadView: View {
    @State private var sadArray = ""
    @State private var sadSongArray = ["song1", "song2", "song3"]
    @State private var sadPodcastArray = ["podcast1", "podcast2", "podcast3"]
    @State private var sadNoiseArray = ["noise1", "noise2", "noise3"]
    var body: some View {
        ZStack{
            VStack{
                HStack{
                    Text("MelodAI")
                    Text("User")
                }
                Text("Sad")
                
                HStack{
                    Button("Songs") {
                        sadArray = sadSongArray
                    } //songs
                    
                    Button("Podcasts") {
                        sadArray = sadPodcastArray
                    } //podcasts
                    
                    Button("Noises") {
                        sadArray = sadNoiseArray
                    } //noise
                } //hstack
                Spacer()
                Text(sadArray)
            } //vstack
        } //zstack
    } //someview
} //struct

struct SadView_Previews: PreviewProvider {
    static var previews: some View {
        SadView()
    }
}
