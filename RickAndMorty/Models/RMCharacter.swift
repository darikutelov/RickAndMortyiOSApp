//
//  RMCharacter.swift
//  RickAndMorty
//
//  Created by Dariy Kutelov on 1.01.23.
//

import Foundation

struct RMCaracter: Codable  {
    let id: Int
    let name: String
    let status: RMCharacterStatus
    let species: String
    let type: String
    let gender: RMCharacterGender
    let origin: RMOrigin
    let location: RMSingleLocation
    let image: String
    let episode: [String]
    let url: String
    let zcreated: String
  }

