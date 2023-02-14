//
//  RMCharacterPhotoCollectionViewCell.swift
//  RickAndMorty
//
//  Created by Dariy Kutelov on 12.02.23.
//

import UIKit

final class RMCharacterPhotoCollectionViewCell: UICollectionViewCell {
  static let cellIdentifier = "RMCharacterPhotoCollectionViewCell"
  
  private let imageView: UIImageView = {
    let imageView = UIImageView()
    imageView.contentMode = .scaleAspectFill
    imageView.clipsToBounds = true
    imageView.translatesAutoresizingMaskIntoConstraints = false
    imageView.layer.masksToBounds = true
    imageView.layer.cornerRadius = 8
    return imageView
  }()
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    contentView.addSubview(imageView)
    setUpConstains()
    
  }
  
  required init?(coder: NSCoder) {
    fatalError()
  }
  
  private func setUpConstains() {
    NSLayoutConstraint.activate([
      imageView.topAnchor.constraint(equalTo: contentView.topAnchor),
      imageView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
      imageView.leftAnchor.constraint(equalTo: contentView.leftAnchor),
      imageView.rightAnchor.constraint(equalTo: contentView.rightAnchor),
    ])
  }
  
  override func prepareForReuse() {
    super.prepareForReuse()
    imageView.image = nil
  }
  
  public func configure(with viewModel: RMCharacterPhotoCollectionViewCellViewModel) {
    viewModel.fetchImage { [weak self] result in
      switch result {
      case .success(let data):
        DispatchQueue.main.async {
          self?.imageView.image = UIImage(data: data)
        }
      case .failure(let failure):
        break
      }
    }
  }
}
