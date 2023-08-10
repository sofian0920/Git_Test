//
//  CellModel.swift
//  Git_Test
//
//  Created by Софья Норина on 24.07.2023.
//

import UIKit

struct CellModel: Identifiable, Codable{
    var id: Int
    var nameRepo: String
    var language: String
    var description: String
    var countOfStars: Int
    var forks: Int
    var watchers: Int 
}
