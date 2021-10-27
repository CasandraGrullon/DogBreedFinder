//
//  APIClient.swift
//  DogBreedFinder
//
//  Created by Casandra Grullon on 10/26/21.
//

import Foundation

class APIClient {
    static func fetchDogBreeds(searchQuery: String, completion: @escaping (Result<[Dog], Error>) -> ()) {
        var endpoint = ""
        
        if !searchQuery.isEmpty {
            endpoint = "https://api.TheDogAPI.com/v1/breeds/search?q=\(searchQuery)"
        } else {
            endpoint = "https://api.TheDogAPI.com/v1/breeds/"
        }
        
        guard let url = URL(string: endpoint) else {
            return
        }
        
        let dataTask = URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                completion(.failure(error))
            } else if let data = data {
                do {
                    let results = try JSONDecoder().decode([Dog].self, from: data)
                    completion(.success(results))
                } catch {
                    completion(.failure(error))
                }
            }
        }
        dataTask.resume()
    }
}
