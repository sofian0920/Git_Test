//
//  TableCell.swift
//  Git_Test
//
//  Created by Софья Норина on 24.07.2023.
//

import SwiftUI

struct TableCellView: View {
    var model: CellModel
    

    var body: some View {
            ZStack {
                Color.mainThim.ignoresSafeArea(.all)
                VStack(alignment: .leading){
                    HStack{
                        Text(model.nameRepo)
                            .foregroundColor(.blue)
                        Spacer()
                        Text(model.language)
                            .foregroundColor(.orange)
                    }
                    .padding(3)
                    Text(model.description)
                        .foregroundColor(.white)
                }
                .padding(15)
            }
    }
}

struct TableCellView_Previews: PreviewProvider {
    static var previews: some View {
        TableCellView(model: CellModel(
                       nameRepo: "new_repo",
                       language: "JavaScript",
                       description: "Ethereum Web3 implementation for mobile (android & ios) Kotlin Multiplatform development",
                       countOfStars: 24, forks: 10,
                      watchers: 3
                      )
                    )
    }
}
