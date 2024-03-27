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
    var state: State
    
    enum State {
        case enquery
        case received(data: [MovieViewModel])
    }
    
    init(loader: MovieDataLoader) {
        state = .enquery
        self.loader = loader
    }
    
    func fetchData() async {
        state = .received(data: await loader.getData().map { MovieViewModel(movie: $0) })
    }
    
    var navTitle: String {
        // place to add localization logic if needed
        "Movies"
    }
    
}
