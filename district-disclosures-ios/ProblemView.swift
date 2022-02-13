//
//  ProblemView.swift
//  district-disclosures-ios
//
//  Created by Melissa Tranfield on 12/02/2022.
//

import SwiftUI

struct ProblemView: View {
    let problem: Problem
    
    var body: some View {

            Image(problem.picture)
            .resizable()
            .scaledToFit()
        
            Text(problem.title)
                .font(.largeTitle)
                .bold()
                .multilineTextAlignment(.center)
        
            Text(problem.borough)
                .font(.title3)
                .bold()
                .foregroundColor(.secondary)
        
            Text(problem.description)
                .padding(.horizontal)
        
            Text(problem.upvotes)
                .padding(.horizontal)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ProblemView(problem: Problem.example)
        }
    }
}

