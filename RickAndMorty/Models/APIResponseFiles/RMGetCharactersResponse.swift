//
//  RMGetCharactersResponse.swift
//  RickAndMorty
//
//  Created by João Pedro Alves on 18/12/23.
//

import Foundation

struct RMGetAllCharactersResponse: Codable {
    struct Info: Codable {
        let pages: Int
        let next: String?
        let prev: String?
    }

    let results: [RMCharacter]
    let info: Info
}
