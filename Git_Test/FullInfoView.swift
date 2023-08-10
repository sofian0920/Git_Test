//
//  FullInfoView.swift
//  Git_Test
//
//  Created by Софья Норина on 25.07.2023.
//

import SwiftUI

struct FullInfoView: View {
    var model: CellModel
   
    
    var body: some View {
        NavigationStack{
            ZStack{
                Color.mainThim.ignoresSafeArea(.all)
                VStack{
                    Text("Some link")
                    HStack{
                        Text("License")
                        Spacer()
                        Text("Apsrche-20 ")
                    }
                    HStack{
                        Image(systemName: "star.fill")
                            .foregroundColor(.yellow)
                        Text("\(model.countOfStars) stars")
                        Spacer()
                        Text("\(model.forks) forks")
                        Spacer()
                        Image(systemName: "eye.fill")
                            .foregroundColor(.blue)
                        Text("\(model.watchers) watchers")
                        
                    }
                    Text(model.description)
                }
                .foregroundColor(.white)
            }
            .navigationTitle(model.nameRepo)
        }
    }
}

struct FullInfoView_Previews: PreviewProvider {
    static var previews: some View {
        FullInfoView(model: CellModel(id: 12, nameRepo: "new_repo", language: "JavaScript",
            description: "Ethereum Web3 implementation for mobile (android & ios) Kotlin Multiplatform development",
                                      countOfStars: 24, forks: 10,
                                     watchers: 3))
    }
}
