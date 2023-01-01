//
//  RMLocation.swift
//  RickAndMorty
//
//  Created by Dariy Kutelov on 1.01.23.
//

import Foundation

struct RMLocation: Codable  {
    let id: Int
    let name: String
    let type: String
    let dimension: String
    let residents: [String]
    let url: String
    let created: String
}
