//
//  RMCharacterStatus.swift
//  RickAndMorty
//
//  Created by Dariy Kutelov on 1.01.23.
//

import Foundation

/// Character status - rawValues should match the strings returned by the API
enum RMCharacterStatus: String, Codable {
    case alive = "Alive"
    case dead  = "Dead"
    case `unknown` = "unknown"
}
