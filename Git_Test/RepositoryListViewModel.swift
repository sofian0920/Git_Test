//
//  RepositoryListViewModel.swift
//  Git_Test
//
//  Created by Софья Норина on 7.08.2023.
//

import Foundation


class RepositoryListViewModel: ObservableObject {
    @Published var repositories: [Repository] = []
    
    func fetchRepositories() {
        let accessToken = "YOUR_TOKEN"
        
        GitHubNetworkManager.shared.getRepositories(accessToken: accessToken) {repositories, error in
            if let repositories = repositories {
                DispatchQueue.main.async {
                    self.repositories = repositories
                }
            } else if let error = error {
                print("Error: \(error.localizedDescription)")
            }
        }
    }
}
