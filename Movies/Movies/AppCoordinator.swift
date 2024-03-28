//
//  Coordinator.swift
//  Movies
//
//  Created by Amir on 3/27/24.
//

import Foundation
import SwiftUI

enum Page: Identifiable, Hashable {
    case root
    var id: String {
        switch self {
        case .root:
            "root"
        }
    }
}
    
@Observable class AppCoordinator {
    var path = NavigationPath()
    
    @ViewBuilder
    func build(page: Page) -> some View {
        switch page {
        case .root:
            PageFactory().makeRootViewController(didSelectAMovie: { selectedMovie in
                return MovieDetailView(viewModel: selectedMovie)
            })
        }
    }
}

struct PageFactory {
    func makeRootViewController(didSelectAMovie: @escaping (MovieViewModel)-> MovieDetailView) -> MoviesView<MovieDetailView> {
        let viewModel = MoviesViewModel(loader: MoviesSampleData())
        return MoviesView<MovieDetailView>(viewModel: viewModel, content: didSelectAMovie)
    }
}

