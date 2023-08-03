//
//  FeelView.swift
//  MelodAI
//
//  Created by scholar on 8/2/23.
//

import SwiftUI

struct ProfileView: View {
    @State private var infoblock = ""
    var body: some View {
        NavigationStack{
            ZStack{
                Image("orangeToBlue")
                    .resizable(resizingMode: .stretch)
                    .ignoresSafeArea()
                VStack{
                    Spacer(minLength: 50)
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
                    VStack{
                        Spacer(minLength: 75)
                        Text("Info Block")
                            .foregroundColor(Color("MediumBlue"))
                            .multilineTextAlignment(.leading)
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .padding()
                        
                        Text("Want to understand the neuroscience behind all of these songs and noises?")
                            .font(.title3)
                            .padding(.horizontal)
                            .frame(height: 50.0)
                            .foregroundColor(Color("customDarkBlue"))
                        HStack{
                            Button("Pink") {
                                infoblock = "Pink noise: Sometimes called ambient noise, this noise can filter out extra background noise such as chatter and cars, which also makes it beneficial for sleep. The “steady background hum” is similar to white noise but has “deeper sounds and lower sound waves,” making it like white noise but lower pitched. Pink noise can be compared to rain or beach waves."
                            }
                            Button("White") {
                                infoblock = "White noise: for static-y noise, various frequencies are used that can create “intense and high-pitched” noise, similar to fans or vacuums. This can be beneficial for sleep, crying babies, work, and ADHD."
                            }
                            Button("Brown") {
                                infoblock = "Brown noise: This noise can also be called red noise but it is similar to white and pink but uses a deeper tone that can create a rumbling noise. This is due to the inverse trend of decreasing decibels and increasing frequency in comparison to pink noise. With that being said, this creates an effect of heavy rain. This can be beneficial to sleep or ear ringing as it has a grainier effect. It has al been proven that it can help with cognitive function and focus."
                            }
                            Button("Green") {
                                infoblock = "Green noise: This noise is similar to what the color evokes: nature! This deep frequency noise has nature-like sounds to it."
                            }
                            Button("Blue") {
                                infoblock = "Blue noise: Similar to pink and white noise, this noise is more shriller, like when a spray bottle is sprayed. Unlike brown noise, this noise exhibits a positive trend of both power and frequency increasing together."
                            }
                            Button("Grey") {
                                infoblock = "Grey noise: Just like the colors, grey and white noise are similar. What makes them different is that grey noise is more balanced as it use higher and lower frequencies. This can be beneficial for hypercusis and tinnitus."
                            }
                            Button("Violet") {
                                infoblock = "Violet noise: Contrasting to brown noise, violet or purple noise has volume increase with the frequency. Additionally, the power increases more than blue noise does, creating more of a high-pitched noise. This can be beneficial to ear ringing."
                            }
                        }.foregroundColor(Color("MediumBlue"))
                        Text(infoblock)
                            .font(.title3)
                            .fontWeight(.semibold)
                            .padding(.horizontal)
                            .frame(height: 500.0)
                            .foregroundColor(Color("MediumBlue"))
                    }.font(.body)
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
                                    Text("📚")
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
