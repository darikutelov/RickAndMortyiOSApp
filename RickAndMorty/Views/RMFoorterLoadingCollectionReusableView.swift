//
//  RMFoorterLoadingCollectionReusableView.swift
//  RickAndMorty
//
//  Created by Dariy Kutelov on 8.01.23.
//

import UIKit

final class RMFoorterLoadingCollectionReusableView: UICollectionReusableView {
    
    static let identivier = "RMFoorterLoadingCollectionReusableView"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .systemBlue
    }
    
    required init?(coder: NSCoder) {
        fatalError("Unsupported")
    }
    
    private func addConstains() {
        
    }
}
