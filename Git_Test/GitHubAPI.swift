//
//  GitHubAPI.swift
//  Git_Test
//
//  Created by Софья Норина on 3.08.2023.
//

import Foundation
import Alamofire


class RepositoriesViewModel: ObservableObject {
    @Published var repositories: [Repository] = []
 
    func fetchRepositories(token: String){
        let headers: HTTPHeaders = ["Authorization": "Bearer \(token)"]
        
        AF.request("https://api.github.com/user/repos", headers: headers)
            .validate()
            .responseDecodable(of: [Repository].self) { response in
                switch response.result{
                case .success(let repositories):
                    self.repositories = repositories
                case .failure(let error):
                    print(error)
                }
            }
    }
    
}




struct Repository: Codable, Identifiable {
    var id: Int
    var name: String
    var description: String?
}
