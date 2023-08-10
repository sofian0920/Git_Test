//
//  GitHubAPI.swift
//  Git_Test
//
//  Created by Софья Норина on 3.08.2023.
//

import Foundation
import Alamofire


class GitHubNetworkManager{
    static var shared = GitHubNetworkManager()
    private let baseURL = "https://api.github.com"
    
    private init () {}
    
    
    func getRepositories(accessToken: String, completion: @escaping ([Repository]?, Error?) -> Void ){
        let headers: HTTPHeaders = [ "Authorization": "token \(accessToken)"]
        
        AF.request("\(baseURL)/user/repos", headers: headers)
            .validate()
            .responseDecodable(of: [Repository].self) {response in
                switch response.result {
                case .success(let repositories):
                    completion(repositories, nil)
                case .failure(let error):
                    completion(nil, error)
                }
            }
    }
}




struct Repository: Codable {
    var id: Int
    var name: String
    var description: String?
}
