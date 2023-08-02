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
                        .font(.title)
                        .padding(.all, 30)
                        .background(Color("MediumBlue"))
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
