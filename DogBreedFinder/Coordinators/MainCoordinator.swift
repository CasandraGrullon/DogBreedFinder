//
//  MainCoordinator.swift
//  DogBreedFinder
//
//  Created by casandra.grullon on 10/27/21.
//

import UIKit

class MainCoordinator: Coordinator {
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let viewModel = DogSearchViewModel()
        let viewController = DogSearchViewController(viewModel: viewModel)
        viewController.coordinator = self
        navigationController.pushViewController(viewController, animated: false)
    }
    
    func tappedOnCell(for dog: Dog) {
        let viewController = DogDetailViewController(dog: dog)
        viewController.coordinator = self
        navigationController.pushViewController(viewController, animated: true)
    }
}


