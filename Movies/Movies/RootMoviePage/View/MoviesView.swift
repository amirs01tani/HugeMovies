//
//  ContentView.swift
//  Movies
//
//  Created by Amir on 3/26/24.
//

import SwiftUI

struct MoviesView<Content: View>: View {
    
    @State private var selectedMovie: MovieViewModel?
    
    var viewModel = MoviesViewModel(movies: MoviesSampleData.getData())
    
    let content: (MovieViewModel) -> Content
    
    var body: some View {
        NavigationSplitView {
            List(viewModel.movies, selection: $selectedMovie) { movie in
                NavigationLink(value: movie) {
                    cellView(movie: movie)
                }.background(imageView(imageURL: movie.thumbURL, height: 218))
            }
            .navigationTitle("Movies")
        } detail: {
            if let selected = selectedMovie {
                content(selected)
            }
        }
    }
}

func textWithBorderedBackground(title: String) -> some View {
    Text(title)
        .bold()
        .padding(4)
        .background(content: { RoundedRectangle(cornerRadius: 6).strokeBorder(.separator)
                .fill(.ultraThinMaterial)
        })
    
}

#Preview {
    MoviesView(viewModel: MoviesViewModel(movies: MoviesSampleData.getData())){ selected in
    MovieDetailView(viewModel: selected)
    }
}
