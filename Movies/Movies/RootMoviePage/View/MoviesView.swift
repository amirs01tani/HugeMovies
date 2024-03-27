//
//  ContentView.swift
//  Movies
//
//  Created by Amir on 3/26/24.
//

import SwiftUI

struct MoviesView<Content: View>: View {
    
    @State private var selectedMovie: MovieViewModel?
    
    var viewModel = MoviesViewModel(loader: MoviesSampleData())
    
    let content: (MovieViewModel) -> Content
    
    var body: some View {
        NavigationSplitView {
            List(viewModel.fetchData(), selection: $selectedMovie) { movie in
                NavigationLink(value: movie) {
                    MovieCellView(movieViewModel: movie)
                }
            }
            .navigationTitle(viewModel.navTitle)
        } detail: {
            if let selected = selectedMovie {
                content(selected)
            }
        }
    }
}

#Preview {
    MoviesView(viewModel: MoviesViewModel(loader: MoviesSampleData())){ selected in
    MovieDetailView(viewModel: selected)
    }
}
