//
//  SecondView.swift
//  Git_Test
//
//  Created by Софья Норина on 18.07.2023.
//

import SwiftUI

struct RepositoriesView: View {
    var cells: [CellModel]
    var body: some View {
        ZStack{
            Color.mainThim.ignoresSafeArea(.all)
            ScrollView{
                VStack{
                    TableCellView(model: cells[0])
                    TableCellView(model: cells[1])
                    TableCellView(model: cells[2])
                    TableCellView(model: cells[1])
                    TableCellView(model: cells[2])
                    TableCellView(model: cells[1])
                    TableCellView(model: cells[2])
                    
                }
            }
        }
    }
}

struct RepositoriesView_Previews: PreviewProvider {
    static var previews: some View {
        RepositoriesView(cells: feed)
    }
}

private var feed: [CellModel] = [
    .init(nameRepo: "moko-web3", language: " Kotlin", description: "Ethereum Web3 implementation for mobile (android & ios) Kotlin Multiplatform development"),
    .init(nameRepo: "moko-resources", language: "Kotlin", description: "Resources access for mobile (android & ios) Kotlin Multiplatform development"),
    .init(nameRepo: "libs.kmp.icerock.dev", language: "JavaScript", description: " Kotlin Multiplatform libraries list with info auto-fetch")
]
