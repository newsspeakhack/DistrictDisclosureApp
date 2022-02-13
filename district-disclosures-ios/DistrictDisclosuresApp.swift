//
//  DistrictDisclosuresApp.swift
//  district-disclosures-ios
//
//  Created by Melissa Tranfield on 12/02/2022.
//

import SwiftUI

@main
struct DistrictDisclosuresApp: App {
    @StateObject var problems = Problems()

    var body: some Scene {
        WindowGroup {
            TabView {
                NavigationView {
                    List(problems.issues, id: \.id) {issue in
                        ProblemView(problem: issue)
                    }
                }
                .tabItem {
                    Image(systemName: "arrow.down")
                    Text("View solution")
                }
                
//                .tabItem {
//                    Image(systemName: "hammer.fill")
//                    Text("Problems")
//                }

                NavigationView {
                    SolutionsView()
                }
                .tabItem {
                    Image(systemName: "hammer.fill")
                    Text("Solutions")
                }
            }
            .environmentObject(problems)
        }
    }
}
