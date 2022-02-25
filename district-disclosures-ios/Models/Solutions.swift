//
//  Solutions.swift
//  district-disclosures-ios
//
//  Created by Melissa Tranfield on 12/02/2022.
//

import Foundation

struct Solutions: Decodable {
    let text: String
    let children: [Solutions]?
}
