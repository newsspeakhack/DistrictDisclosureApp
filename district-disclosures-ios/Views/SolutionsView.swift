//
//  SolutionsView.swift
//  district-disclosures-ios
//
//  Created by Melissa Tranfield on 12/02/2022.
//

import SwiftUI

struct SolutionsView: View {
    let solutions: [Solutions]

    init() {
        let url = Bundle.main.url(forResource: "solutions", withExtension: "json")!
        let data = try! Data(contentsOf: url)
        solutions = try! JSONDecoder().decode([Solutions].self, from: data)
    }

    var body: some View {
        List(solutions, id: \.text, children: \.children) { solutions in
            if solutions.children != nil {
                Label(solutions.text, systemImage: "pencil.circle")
                    .font(.headline)
            } else {
                Text(solutions.text)
            }
        }
        .navigationTitle("Solutions")
    }
}

struct SolutionsView_Previews: PreviewProvider {
    static var previews: some View {
        SolutionsView()
    }
}
