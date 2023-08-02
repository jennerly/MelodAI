//
//  FeelView.swift
//  MelodAI
//
//  Created by scholar on 8/2/23.
//

import SwiftUI

struct FeelView: View {
    var body: some View {
        ZStack{
            VStack{
                NavigationLink(destination: SadView()) {
                    Text("Sad")
                        .font(.title)
                        .padding(.all, 30)
                        .background(Color("MediumBlue"))
                        .foregroundColor(Color("customDarkBlue"))
                        .cornerRadius(100)
                        .shadow(radius: 10)
                } // homeview
                Text("Feel")
                    .font(.title)
                    .padding(.all, 30)
                    .background(Color("MediumBlue"))
                    .foregroundColor(Color("customDarkBlue"))
                    .cornerRadius(100)
                    .shadow(radius: 10)
                
                
            }
        }
    }
}

struct FeelView_Previews: PreviewProvider {
    static var previews: some View {
        FeelView()
    }
}
