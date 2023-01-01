//
//  RMEndpoint.swift
//  RickAndMorty
//
//  Created by Dariy Kutelov on 1.01.23.
//

import Foundation

/// Represents unique API points
@frozen enum RMEndpoint: String {
    /// Endpoint to get character info
    case character
    /// Endpoint to get location info
    case location
    /// Endpoint to get episode info
    case episode
}
