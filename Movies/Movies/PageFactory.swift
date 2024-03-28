//
//  PageFactory.swift
//  Movies
//
//  Created by Amir on 3/29/24.
//

import Foundation

struct PageFactory {
    func makeRootViewController(didSelectAMovie: @escaping (MovieViewModel)-> MovieDetailView) -> MoviesView<MovieDetailView> {
        let viewModel = MoviesViewModel(loader: MoviesSampleData())
        return MoviesView<MovieDetailView>(viewModel: viewModel, content: didSelectAMovie)
    }
}
