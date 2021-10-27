//
//  ViewController.swift
//  DogBreedFinder
//
//  Created by Casandra Grullon on 10/26/21.
//

import UIKit

protocol ViewControllerDelegate {
    func dogData(dogs: [Dog])
}

class DogSearchViewController: UIViewController {
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var collectionView: UICollectionView!
    
    var viewModel = DogSearchViewModel()
    
    init(viewModel: DogSearchViewModel) {
        self.viewModel = viewModel
        super.init(nibName: "DogSearchViewController", bundle: Bundle.main)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.delegate = self
        configureCollectionView()
        configureSearchBar()
        viewModel.setSearchText(text: "")
    }
    
    private func configureCollectionView() {
        collectionView.dataSource = self
        collectionView.register(UINib(nibName: "DogCollectionViewCell", bundle: nil),
                                forCellWithReuseIdentifier: DogCollectionViewCell.identifier)
    }
    
    private func configureSearchBar() {
        searchBar.delegate = self
    }
}

//MARK: ViewModel Delegate
extension DogSearchViewController: ViewControllerDelegate {
    func dogData(dogs: [Dog]) {
        DispatchQueue.main.async {
            self.collectionView.reloadData()
        }
    }
}

//MARK: CollectionView Datasource
extension DogSearchViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return viewModel.dogs.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: DogCollectionViewCell.identifier, for: indexPath) as? DogCollectionViewCell else { fatalError("could not dequeue DogCollectionViewCell") }
        
        let dog = viewModel.dogs[indexPath.row]
        cell.configureCell(dog: dog)
        return cell
    }
}

//MARK: SearchBar Delegate
extension DogSearchViewController: UISearchBarDelegate {
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        if let searchText = searchBar.searchTextField.text {
            viewModel.setSearchText(text: searchText)
        }
    }
}

