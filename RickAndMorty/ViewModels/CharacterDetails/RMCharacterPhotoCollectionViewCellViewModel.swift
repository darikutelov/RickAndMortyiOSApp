//
//  RMCharacterPhotoCollectionViewCellViewModel.swift
//  RickAndMorty
//
//  Created by Dariy Kutelov on 12.02.23.
//

import Foundation

final class RMCharacterPhotoCollectionViewCellViewModel {
  private let imageUrl: URL?
  
  init(umageUrl: URL?) {
    self.imageUrl = umageUrl
  }
  
  public func fetchImage(completion: @escaping (Result<Data, Error>) -> Void) {
    guard let imageUrl = imageUrl else {
      completion(.failure(URLError(.badURL)))
      return
    }
    
    RMImageLoader.shared.downloadImage(imageUrl, completion: completion)
  }
}
