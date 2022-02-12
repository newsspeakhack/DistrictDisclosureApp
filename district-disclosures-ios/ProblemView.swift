//
//  ProblemView.swift
//  district-disclosures-ios
//
//  Created by Melissa Tranfield on 12/02/2022.
//

import SwiftUI

struct ProblemView: View {
    var body: some View {
        ScrollView {
        Image("tottenham-haringey")
            .resizable()
            .scaledToFit()
        
        Text("Knife Crime in Tottenham Hale")
                .font(.largeTitle)
                .bold()
                .multilineTextAlignment(.center)
        
        Text("Haringey")
                .font(.title)
                .foregroundColor(.secondary)
        
        Text("The toilet is never being cleaned and I’m tired of having to always do the cleaning myself.")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ProblemView()
    }
}

