//
//  JSONLoader.swift
//  MoviePedia
//
//  Created by Otávio Zabaleta on 01/05/2024.
//

import Foundation

class JSONLoader {
    static func loadJson<T: Decodable>(_ filename: String) throws -> T {
        guard let file = Bundle(for: Self.self).url(forResource: filename, withExtension: "json") else {
            fatalError("Couldn't find \(filename) in test bundle.")
        }
        
        return try JSONDecoder().decode(T.self, from: try Data(contentsOf: file))
    }
    
    static func movies() throws -> [Movie] { try loadJson("all_movies") }
    static func ramboIII() throws -> Movie { try loadJson("ramboIII") }
}
