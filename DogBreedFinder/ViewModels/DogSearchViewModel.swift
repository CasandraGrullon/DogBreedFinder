//
//  DogSearchViewModel.swift
//  DogBreedFinder
//
//  Created by Casandra Grullon on 10/26/21.
//

import Foundation

protocol ViewModelDelegate {
    func setSearchText(text: String)
}

class DogSearchViewModel: ViewModelDelegate {
    
    var delegate: ViewControllerDelegate?
    
    var dogs = [Dog]()
    
    private(set) var searchText = ""
    
    private func fetchDogs(_ search: String) {
        APIClient.fetchDogBreeds(searchQuery: search) { [weak self] result in
            switch result {
            case .failure(let error):
                print(error)
            case .success(let dogs):
                self?.dogs = dogs
                self?.delegate?.dogData(dogs: dogs)
            }
        }
    }
    
    func setSearchText(text: String) {
        searchText = text
        
        if !searchText.isEmpty {
            fetchDogs(searchText)
        } else {
            fetchDogs("")
        }
    }
    
}
