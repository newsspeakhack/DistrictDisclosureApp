//
//  Problems.swift
//  district-disclosures-ios
//
//  Created by Melissa Tranfield on 12/02/2022.
//

import Foundation

class Problems: ObservableObject {
    let issues: [Problem]

    init() {
        let url = Bundle.main.url(forResource: "problems", withExtension: "json")!
        let data = try! Data(contentsOf: url)
        issues = try! JSONDecoder().decode([Problem].self, from: data)
    }
}
