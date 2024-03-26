//
//  ContentView.swift
//  Movies
//
//  Created by Amir on 3/26/24.
//

import SwiftUI

struct MoviesView: View {
    
    @State private var selectedMovie: MovieViewModel?
    @State private var path: [MovieViewModel] = []
    
    var viewModel = MoviesViewModel(movies: MoviesSampleData.getData())
    var body: some View {
        NavigationSplitView {
            List(viewModel.movies, selection: $selectedMovie) { movie in
                NavigationLink(value: movie) {
                    cellView(movie: movie)
                }.background(imageView(imageURL: movie.thumbURL, height: 218))
            }
            .navigationTitle("Movies")
        } detail: {
            NavigationStack(path: $path) {
                if let selected = selectedMovie {
                    MovieDetailView(viewModel: selected)
                }
            }
        }
    }
}

// MARK: - Helpers
func imageView(imageURL: String, blurRadius: CGFloat = 4.0, height: CGFloat) -> some View {
    // we can use cache mechanism to enhance the network performance and reduce the network calls
    AsyncImage(url: URL(string: imageURL)) { image in
        image.resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: .infinity, height: height)
            .blur(radius: blurRadius)
    } placeholder: {
        ProgressView()
    }
    .cornerRadius(15)
    .padding(.horizontal, -20)
}

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
    MoviesView(viewModel: MoviesViewModel(movies: MoviesSampleData.getData()))
}
