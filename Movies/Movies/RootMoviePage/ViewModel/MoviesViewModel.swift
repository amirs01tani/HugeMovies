//
//  MoviesViewModel.swift
//  Movies
//
//  Created by Amir on 3/26/24.
//

import Foundation

class MoviesViewModel {
    let movies: [MovieViewModel]
    
    init(movies: [Movie]) {
        self.movies = movies.map{ MovieViewModel(movie: $0) }
    }
    
    var navTitle: String {
        "Movies"
    }
}
