//
//  DogSearchViewModel.swift
//  DogBreedFinder
//
//  Created by Casandra Grullon on 10/26/21.
//

import Foundation

class DogSearchViewModel {
    var dogs = [Dog]()
    
    func fetchDogs(_ search: String?) {
        APIClient.fetchDogBreeds(searchQuery: search) { result in
            switch result {
            case .failure(let error):
                print(error)
            case .success(let dogs):
                self.dogs = dogs
            }
        }
    }
    
}
