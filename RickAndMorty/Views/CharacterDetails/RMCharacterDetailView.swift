//
//  RMCharacterDetailView.swift
//  RickAndMorty
//
//  Created by Dariy Kutelov on 8.01.23.
//

import UIKit

/// View for single character info
final class RMCharacterDetailView: UIView {
  
  public var collectionView: UICollectionView?
  
  private let viewModel: RMCharacterDetailViewViewModel
  
  private let spinner: UIActivityIndicatorView = {
    let spinner = UIActivityIndicatorView(style: .large)
    spinner.hidesWhenStopped = true
    spinner.translatesAutoresizingMaskIntoConstraints = false
    return spinner
  }()
  
  // MARK: - Init
  
  init(frame: CGRect, viewMode: RMCharacterDetailViewViewModel) {
    self.viewModel = viewMode
    super.init(frame: frame)
    translatesAutoresizingMaskIntoConstraints = false
    let collectionView = createCollectionView()
    self.collectionView = collectionView
    addSubviews(collectionView, spinner)
    addConstrains()
  }
  
  required init?(coder: NSCoder) {
    fatalError("Unsupported")
  }
  
  private func addConstrains() {
    guard let collectionView = collectionView else {
      return
    }
    
    NSLayoutConstraint.activate([
      spinner.widthAnchor.constraint(equalToConstant: 100),
      spinner.heightAnchor.constraint(equalToConstant: 100),
      spinner.centerXAnchor.constraint(equalTo: centerXAnchor),
      spinner.centerYAnchor.constraint(equalTo: centerYAnchor),
      
      collectionView.topAnchor.constraint(equalTo: topAnchor),
      collectionView.leftAnchor.constraint(equalTo: leftAnchor),
      collectionView.rightAnchor.constraint(equalTo: rightAnchor),
      collectionView.bottomAnchor.constraint(equalTo: bottomAnchor),
    ])
  }
  
  // MARK: - Compositional Layout Collection View
  
  private func createCollectionView() -> UICollectionView {
    let layout = UICollectionViewCompositionalLayout { sectionIndex, _ in
      return self.createSection(for: sectionIndex)
    }
    
    let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
    collectionView.register(RMCharacterPhotoCollectionViewCell.self,
                            forCellWithReuseIdentifier: RMCharacterPhotoCollectionViewCell.cellIdentifier)
    collectionView.register(RMCharacterInfoCollectionViewCell.self,
                            forCellWithReuseIdentifier: RMCharacterInfoCollectionViewCell.cellIdentifier)
    collectionView.register(RMCharacterEpisodeCollectionViewCell.self,
                            forCellWithReuseIdentifier: RMCharacterEpisodeCollectionViewCell.cellIdentifier)
    collectionView.translatesAutoresizingMaskIntoConstraints = false
    return collectionView
  }
  
  private func createSection(for sectionIndex: Int) -> NSCollectionLayoutSection {
    let sectionTypes = viewModel.sections
    
    switch sectionTypes[sectionIndex] {
    case .photo:
      return viewModel.createPhotoSectionLayout()
    case .information:
      return viewModel.createInformationSectionLayout()
    case .episodes:
      return viewModel.createEpisodesSectionLayout()
    }
  }
}
