//
//  HomeView.swift
//  district-disclosures-ios
//
//  Created by Marcus Mattus on 12/02/2022.
//

import SwiftUI

struct HomeView: View {
        var body: some View {
            NavigationView {
                     NavigationLink(destination: NoSpaceList()
                     ) {
                        Text("Press on me")
                     }.buttonStyle(PlainButtonStyle())
                  }
               }
            }


