//
//  DogCollectionViewCell.swift
//  DogBreedFinder
//
//  Created by casandra.grullon on 10/27/21.
//

import UIKit

class DogCollectionViewCell: UICollectionViewCell {
   @IBOutlet weak var dogImageView: UIImageView!
    @IBOutlet weak var dogNameLabel: UILabel!
    
    static let identifier = "DogCollectionViewCell"
    
    func configureCell(dog: Dog) {
        dogImageView.image = UIImage(systemName: "circle")
        dogNameLabel.text = dog.name
    }
}
