//
//  GitHubAPI.swift
//  Git_Test
//
//  Created by Софья Норина on 3.08.2023.
//

import Foundation
import Alamofire


struct GitHubAPI {
    static let accessToken =  "YOUR_ACCESS_TOKEN"
    static let baseURL = "https://api.github.com"
}


func getRepositories(complition: @escaping([Repository]?) -> Void) -> Void {
    let headers: HTTPHeaders = ["Authorization" : "token \(GitHubAPI.accessToken)"]
    
    AF.request("\(GitHubAPI.baseURL)/user/repos", headers: headers)
        .responseDecodable(of: [Repository].self) { response in
            switch response.result {
            case .success(let repositories):
                complition(repositories)
            case .failure(let error):
                print("Error: \(error)")
                complition(nil)
            }
        }
}


struct Repository: Decodable, Identifiable {
    let id: Int
    var name: String
    let description: String?
}
