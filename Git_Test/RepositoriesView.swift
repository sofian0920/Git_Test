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
            ZStack {
                Color.mainThim.ignoresSafeArea(.all)
                ScrollView {
                    VStack {
                        ForEach(viewModel.repositories, id: \.id) { repository in
                            TableCellView(model: repository)
                        }
                    }
                }
            }
            .onAppear (perform: {
                let token = "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"
                viewModel.fetchRepositories(token: token)
                
            })
        }
    
}
struct RepositoriesView_Previews: PreviewProvider {
    static var previews: some View {
        RepositoriesView()
    }
}
