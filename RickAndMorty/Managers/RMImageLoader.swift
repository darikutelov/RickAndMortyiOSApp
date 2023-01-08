//
//  ImageManager.swift
//  RickAndMorty
//
//  Created by Dariy Kutelov on 8.01.23.
//

import Foundation

final class RMImageLoader {
    
    static let shared = RMImageLoader()
    
    private init() {}
    
    func downloadImage(_ url: URL, completion: @escaping (Result<Data, Error>) -> Void) {
        let request = URLRequest(url: url)
        let task = URLSession.shared.dataTask(with: request) { data, _, error in
            guard let data = data, error == nil else {
                completion(.failure(URLError(.badServerResponse)))
                return
            }
            completion(.success(data))
        }
        task.resume()
    }
}
