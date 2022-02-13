//
//  ProblemsViewModel.swift
//  district-disclosures-ios
//
//  Created by Sam Stephenson on 12/02/2022.
//

import Foundation

struct Response: Codable {
    var results: [Problem]
}

struct Result: Codable {
    var id: String
    var title: String
    var description: String
    var upvotes: Int
}

struct Solution: Codable {

}
   
class ProblemsViewModel:NSObject, ObservableObject {
    @Published var problems = [Problem]()
    //@Published var solutions =
  

    func loadProblems() async {
        guard let url = URL(string: "https://europe-west2-b33mo-310309.cloudfunctions.net/problems") else {
            print("Invalid URL")
            return
        }

        do {
            print("trying url")
            let (data, _) = try await URLSession.shared.data(from: url)
            //            let str = String(decoding: data, as: UTF8.self)
            //            print(str)
            print(data)
            if let decodedResponse = try? JSONDecoder().decode(Response.self, from: data) {
                print("got a response")
                print(decodedResponse)
                problems = decodedResponse.results
            }

        } catch {
            print(problems)
        }
    }
    
    
    
    //original comments
//    func loadSolutions() async {
//        guard let url = URL(string: "https://europe-west2-b33mo-310309.cloudfunctions.net/solutions") else {
//            print("Invalid URL")
//            return
//        }
//
//        do {
//            print("trying url")
//            let (data, _) = try await URLSession.shared.data(from: url)
//            //            let str = String(decoding: data, as: UTF8.self)
//            //            print(str)
//            if let decodedResponse = try? JSONDecoder().decode(Response.self, from: data) {
//                print("got a response")
//                print(decodedResponse)
//                solutions = decodedResponse.results
//            }
//
//        } catch {
//            print("Invalid data")
//        }
//    }
}
