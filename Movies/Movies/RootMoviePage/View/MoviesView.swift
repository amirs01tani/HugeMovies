//
//  ContentView.swift
//  Movies
//
//  Created by Amir on 3/26/24.
//

import SwiftUI

struct MoviesView<Content: View>: View {
    @State var viewModel = MoviesViewModel(loader: MoviesSampleData())
    let content: (MovieViewModel) -> Content
    
    var body: some View {
        switch viewModel.state {
        case .enquery:
            ProgressView()
                .task {
                    await viewModel.fetchData()
                }
        case .received(let movies):
            NavigationSplitView {
                List(movies, selection: $viewModel.selectedMovie) { movie in
                    NavigationLink(value: movie) {
                        MovieCellView(movieViewModel: movie)
                    }
                }
                .navigationTitle(viewModel.navTitle)
            } detail: {
                if let selected = viewModel.selectedMovie {
                    content(selected)
                }
            }
        }
    }
}

#Preview {
    MoviesView(viewModel: MoviesViewModel(loader: MoviesSampleData())){ selected in
    MovieDetailView(viewModel: selected)
    }
}
