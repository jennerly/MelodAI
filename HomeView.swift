//
//  HomeView.swift
//  MelodAI
//
//  Created by scholar on 8/1/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack{
            VStack{
                Text("MelodAI")
            } //vstack
            
            VStack{
                Button("Feel") {
                    
                }
                
            } //vstack
            
        } //zstack
        .background(
                LinearGradient(gradient: Gradient(colors: [.white, .black]), startPoint: .top, endPoint: .bottom)
            )
    } //some view
} //homeview

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
