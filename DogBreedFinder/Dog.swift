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
    let bred_for: String?
    let breed_group: String?
    let life_span: String?
    let temperament: String?
    let origin: String?
    let image: Image
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
