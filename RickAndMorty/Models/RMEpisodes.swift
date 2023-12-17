//
//  RMEpisodes.swift
//  RickAndMorty
//
//  Created by João Pedro Alves on 16/12/23.
//

import Foundation

struct RMEpisode: Codable {
    let id: String
    let name: String
    let air_date: String
    let characters: [String]
    let url: String
    let created: String
}
