//
//  GitHubAPI.swift
//  Git_Test
//
//  Created by Софья Норина on 3.08.2023.
//

import Foundation
import Alamofire


class RepositoriesViewModel: ObservableObject {
    @Published var repositories: [CellModel] = []
    
 
    func fetchRepositories(token: String){
        let headers: HTTPHeaders = ["Authorization": "Bearer \(token)"]
        let url =  "https://api.github.com/users/sofian0920/repos"
        
        AF.request(url, method: .get, headers: headers)
            .validate()
            .responseDecodable(of: [CellModel].self) { [self] response in
                switch response.result{
                case .success(let repositories):
                    self.repositories = repositories
                case .failure(let error):
                    print(error)
                }
            }
    }
    
}




//struct Repository: Codable, Identifiable {
//    var id: Int
//    var name: String
//    var description: String?
//}
