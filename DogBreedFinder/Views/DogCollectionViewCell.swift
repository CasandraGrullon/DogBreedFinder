//
//  DogCollectionViewCell.swift
//  DogBreedFinder
//
//  Created by casandra.grullon on 10/27/21.
//

import UIKit
import Kingfisher

class DogCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var dogImageView: UIImageView!
    @IBOutlet weak var dogNameLabel: UILabel!
    
    static let identifier = "DogCollectionViewCell"
    
    func configureCell(dog: Dog) {
        if let dogImage = dog.image?.url {
            dogImageView.kf.setImage(with: URL(string: dogImage))
        } else {
            dogImageView.backgroundColor = .systemGray
        }
        dogNameLabel.text = dog.name
    }
    
    override func layoutSubviews() {
        self.dogImageView.layer.cornerRadius = 8
        self.dogImageView.clipsToBounds = true
    }
}
