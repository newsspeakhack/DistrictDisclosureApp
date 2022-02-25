    //
//  Problem.swift
//  district-disclosures-ios
//
//  Created by Melissa Tranfield on 12/02/2022.
//

import Foundation

struct Problem: Decodable {
    let id: Int
    let title: String
    let borough: String
    let description: String
    let upvotes: String
    let picture: String
    
    static let example = Problem(id: 1,
                                  title: "Knife crime in Haringey",
                                  borough: "Tower Hamlets",
                                  description: "There have been various incidents of knife crime in my local area and nothing is being done about it.",
                                  upvotes: "3",
                                  picture: "canning-town")
}
