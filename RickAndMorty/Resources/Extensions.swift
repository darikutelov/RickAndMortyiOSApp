//
//  Extensions.swift
//  RickAndMorty
//
//  Created by Dariy Kutelov on 2.01.23.
//

import UIKit

extension UIView {
    func addSubviews(_ views: UIView...) {
        views.forEach({
            addSubview($0)
        })
    }
}
