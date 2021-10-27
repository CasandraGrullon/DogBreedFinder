//
//  Coordinator.swift
//  DogBreedFinder
//
//  Created by casandra.grullon on 10/27/21.
//

import Foundation
import UIKit

protocol Coordinator {
    var navigationController: UINavigationController { get set }
    
    func start()
}
