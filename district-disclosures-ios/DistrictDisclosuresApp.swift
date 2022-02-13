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
    var problemsViewModel = ProblemsViewModel()
    

    var body: some Scene {
        WindowGroup {
            TabView {
                NavigationView {
                    List(problemsViewModel.problems, id: \.id) { problem in
                        ProblemView(problem: problem)
                    }
                    .task {
                        await problemsViewModel.loadProblems()
                    }
                    .navigationTitle("Problems")
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
