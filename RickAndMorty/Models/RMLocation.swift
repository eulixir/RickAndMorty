//
//  RMLocation.swift
//  RickAndMorty
//
//  Created by João Pedro Alves on 16/12/23.
//

import Foundation

struct RMLocation: Codable {
    let id: Int
    let name: String
    let type: String
    let dimenstion: String
    let residents: [String]
    let url: String
    let created: String
}
