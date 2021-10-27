//
//  Dog.swift
//  DogBreedFinder
//
//  Created by Casandra Grullon on 10/26/21.
//

import Foundation

struct Dog: Codable {
    let weight: Weight
    let height: Height
    let id: Int
    let name: String
    let bredFor: String?
    let breedGroup: String?
    let lifeSpan: String?
    let temperament: String?
    let origin: String?
    let image: Image?
}

struct Weight: Codable {
    let imperial: String
    let metric: String
}

struct Height: Codable {
    let imperial: String
    let metric: String
}

struct Image: Codable {
    let url: String
}

extension Dog {
    enum CodingKeys: String, CodingKey {
        case weight
        case height
        case id
        case name
        case bredFor = "bred_for"
        case breedGroup = "breed_group"
        case lifeSpan = "life_span"
        case temperament
        case origin
        case image
    }
}
