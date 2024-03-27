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

// MARK: - Helpers


private func cellView(movie: MovieViewModel) -> some View {
    VStack(alignment: .leading) {
        textWithBorderedBackground(title: movie.title)
            .foregroundStyle(.primary)
            .font(.title)
            .padding([.top], 8)
        Spacer()
        HStack {
            Spacer()
            textWithBorderedBackground(title: "Year: \(movie.year)")
                .foregroundStyle(.secondary)
                .padding(.bottom, 8)
                
        }
    }.frame(height: 220)
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
