//
//  RMGetAllCharactersResponse.swift
//  RickAndMorty
//
//  Created by Dariy Kutelov on 2.01.23.
//

import Foundation

struct RMGetAllCharactersResponse: Codable {
    let info: RMGetAllCharactersResponseInfo
    let results: [RMCharacter]
}

struct RMGetAllCharactersResponseInfo: Codable {
    let count: Int
    let pages: Int
    let next: String?
    let prev: String?
}
