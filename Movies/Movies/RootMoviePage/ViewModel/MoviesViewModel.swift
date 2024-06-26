//
//  MoviesViewModel.swift
//  Movies
//
//  Created by Amir on 3/26/24.
//

import Foundation

class MoviesViewModel: ObservableObject {
    let loader: MovieDataLoader
    @Published var selectedMovie: MovieViewModel?
    @Published var state: State
    
    enum State {
        case enquery
        case received(data: [MovieViewModel])
    }
    
    init(loader: MovieDataLoader) {
        state = .enquery
        self.loader = loader
    }
    
    func fetchData() async {
        let data = await loader.getData()
        await MainActor.run {
            state = .received(data: data.map { MovieViewModel(movie: $0) })
        }
    }
    
    var navTitle: String {
        // place to add localization logic if needed
        "Movies"
    }
    
}
