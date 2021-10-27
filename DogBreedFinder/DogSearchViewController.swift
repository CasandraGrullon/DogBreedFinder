//
//  ViewController.swift
//  DogBreedFinder
//
//  Created by Casandra Grullon on 10/26/21.
//

import UIKit

class DogSearchViewController: UIViewController {
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var collectionView: UICollectionView!
    
    var viewModel: DogSearchViewModel
    
    init(viewModel: DogSearchViewModel) {
        self.viewModel = viewModel
        super.init(nibName: "DogSearchViewController", bundle: Bundle.main)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.fetchDogs(nil)
        print(viewModel.dogs)
    }
    
    


}

