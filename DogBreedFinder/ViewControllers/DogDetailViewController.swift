//
//  DogDetailViewController.swift
//  DogBreedFinder
//
//  Created by casandra.grullon on 10/27/21.
//

import UIKit

class DogDetailViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var breedGroupLabel: UILabel!
    @IBOutlet weak var bredForLabel: UILabel!
    @IBOutlet weak var originLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var tempermentLabel: UILabel!
    @IBOutlet weak var lifespanLabel: UILabel!
    
    private let dog: Dog
    weak var coordinator: MainCoordinator?
    
    init(dog: Dog) {
        self.dog = dog
        super.init(nibName: "DogDetailViewController", bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI(dog: dog)
        print(dog)
    }
    
    func updateUI(dog: Dog) {
        if let dogImage = dog.image?.url {
            imageView.kf.setImage(with: URL(string: dogImage))
        }
        
        breedGroupLabel.text = dog.breedGroup
        bredForLabel.text = dog.bredFor
        originLabel.text = dog.origin
        heightLabel.text = dog.height.imperial + "inches"
        weightLabel.text = dog.weight.imperial + "lbs"
        tempermentLabel.text = dog.temperament
        lifespanLabel.text = dog.lifeSpan
        
        navigationItem.title = dog.name
    }
    
}
