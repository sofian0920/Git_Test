//
//  SecondView.swift
//  Git_Test
//
//  Created by Софья Норина on 18.07.2023.
//

import SwiftUI


struct RepositoriesView: View {
    @ObservedObject var viewModel = RepositoriesViewModel()

    var body: some View {
        NavigationView {
            ZStack {
                Color.mainThim.ignoresSafeArea(.all)
                ScrollView {
                    VStack {
                        ForEach(viewModel.repositories) { repository in
                            TableCellView(model: repository)
                        }
                    }
                }
            }
            
        }
        .onAppear {
            let token = ""
            viewModel.fetchRepositories(token: token)
        }
    }
}

struct RepositoriesView_Previews: PreviewProvider {
    static var previews: some View {
        RepositoriesView()
    }
}
