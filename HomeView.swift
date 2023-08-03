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
                NavigationLink(destination: FeelView()) {
                    Text("Feel")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                        .padding(.all, 30)
                        .background(Color("LightBlue"))
                        .foregroundColor(Color("customDarkBlue"))
                        .cornerRadius(100)
                        .shadow(radius: 10)
                } // homeview
            } //vstack
            
        } //zstack
    } //some view
} //homeview

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
