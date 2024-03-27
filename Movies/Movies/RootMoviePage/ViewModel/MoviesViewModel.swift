//
//  MoviesViewModel.swift
//  Movies
//
//  Created by Amir on 3/26/24.
//

import Foundation

@Observable class MoviesViewModel {
    let loader: MovieDataLoader
    var selectedMovie: MovieViewModel?
    
    init(loader: MovieDataLoader) {
        self.loader = loader
    }
    
    func fetchData() -> [MovieViewModel] {
        loader.getData().map({ MovieViewModel(movie: $0) })
    }
    
    var navTitle: String {
        // place to add localization logic if needed
        "Movies"
    }
    
}
