//
//  GitHubAPI.swift
//  Git_Test
//
//  Created by Софья Норина on 3.08.2023.
//

import Foundation
import Alamofire


class GitHubAPIManager {
    private let accessToken: String
    private let baseURL = "https://api.github.com"
    
    init(accessToken: String){
        self.accessToken = accessToken
    }
    
    func fetchRepositories(completion: @escaping ([Repository]?) -> Void){
        let urlSrting = baseURL + "/user/repos"
        guard let url = URL(string: urlSrting) else {
            completion(nil)
            return
        }
    }
}



struct Repository: Decodable, Identifiable {
    var id: Int
    var name: String
    var description: String?
}
