//
//  ContentView.swift
//  MoviePedia
//
//  Created by Otávio Zabaleta on 01/05/2024.
//

import SwiftUI
import SwiftData
import CoreData

struct ContentView: View {
    var body: some View {
        NavigationStack {
            MoviesListView(movies: movies)
        }
    }
    
    var movies: [Movie] {
        guard let movies = try? JSONLoader.movies() else { fatalError() }
        return movies
    }
}

#Preview {
    ContentView()
}
