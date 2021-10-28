//
//  DogBreedFinderTests.swift
//  DogBreedFinderTests
//
//  Created by casandra.grullon on 10/28/21.
//

import XCTest
@testable import DogBreedFinder

class DogBreedFinderTests: XCTestCase {
    let dog = Dog(weight: Weight(imperial: "6 - 13", metric: "3 - 6"),
                  height: Height(imperial: "9 - 11.5", metric: "23 - 29"),
                  id: 1,
                  name: "Affenpinscher",
                  bredFor: Optional("Small rodent hunting, lapdog"),
                  breedGroup: Optional("Toy"),
                  lifeSpan: Optional("10 - 12 years"),
                  temperament: Optional("Stubborn, Curious, Playful, Adventurous, Active, Fun-loving"),
                  origin: Optional("Germany, France"),
                  image: Optional(Image(url: "https://cdn2.thedogapi.com/images/BJa4kxc4X.jpg")))
    
    var viewModel: DogSearchViewModel!
    
    override func setUp() {
        super.setUp()
        viewModel = DogSearchViewModel()
    }
    
    override func tearDown() {
        viewModel = nil
        super.tearDown()
    }
}
