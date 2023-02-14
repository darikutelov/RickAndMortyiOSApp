//
//  RMCharacterEpisodeCollectionViewCellViewModel.swift
//  RickAndMorty
//
//  Created by Dariy Kutelov on 12.02.23.
//

import Foundation

final class RMCharacterEpisodeCollectionViewCellViewModel {
  private let episodeDataUrl: URL?
  
  init(episodeDataUrl: URL?) {
    self.episodeDataUrl = episodeDataUrl
  }
}
