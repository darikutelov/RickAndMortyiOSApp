//
//  RMCharacterInfoCollectionViewCellViewModel.swift
//  RickAndMorty
//
//  Created by Dariy Kutelov on 12.02.23.
//

import UIKit

final class RMCharacterInfoCollectionViewCellViewModel {
  private let type: `Type`
  private let value: String
  
  public var title: String {
    self.type.displayTitle
  }
  
  public var displayValue: String {
    if value.isEmpty { return "None"}
    return value
  }
  
  public var iconImage: UIImage? {
    return type.iconImage
  }
  
  public var tintColor: UIColor {
    return type.tintColor
  }
  
  enum `Type` {
    case status
    case gender
    case type
    case species
    case origin
    case created
    case location
    case episodeCount
    
    var tintColor: UIColor {
      switch self {
      case .status:
        return .systemBlue
      case .gender:
        return .systemRed
      case .type:
        return .systemPink
      case .species:
        return .systemPurple
      case .origin:
        return .systemYellow
      case .created:
        return .systemMint
      case .location:
        return .systemCyan
      case .episodeCount:
        return .systemGray
      }
    }
    
    var iconImage: UIImage? {
      switch self {
      case .status:
        return UIImage(systemName: "bell")
      case .gender:
        return UIImage(systemName: "bell")
      case .type:
        return UIImage(systemName: "bell")
      case .species:
        return UIImage(systemName: "bell")
      case .origin:
        return UIImage(systemName: "bell")
      case .created:
        return UIImage(systemName: "bell")
      case .location:
        return UIImage(systemName: "bell")
      case .episodeCount:
        return UIImage(systemName: "bell")
      }
    }
    
    var displayTitle: String {
      switch self {
      case .status:
        return "Status"
      case .gender:
        return "Gender"
      case .type:
        return "Type"
      case .species:
        return "Species"
      case .origin:
        return "Origin"
      case .created:
        return "Created"
      case .location:
        return "Location"
      case .episodeCount:
        return "Episodes"
      }
    }
  }
  
  // MARK: - Init
  
  init(
    type: `Type`,
    value: String
  ) {
    self.value = value
    self.type = type
  }
}
