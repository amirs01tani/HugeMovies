//
//  ContentView.swift
//  Movies
//
//  Created by Amir on 3/26/24.
//

import SwiftUI

struct MoviesView: View {
    var viewModel = MoviesViewModel(movies: MoviesSampleData.getData())
    var body: some View {
        NavigationSplitView {
            List(viewModel.movies) { movie in
                NavigationLink(value: movie) {
                    cellView(movie: movie)
                }.background(imageView(imageURL: movie.thumbURL))
                    .frame(maxHeight: 220)
            }
            .navigationTitle("Movies")
        } detail: {
            
        }
    }
}

// MARK: - Helpers
private func imageView(imageURL: String) -> some View {
    AsyncImage(url: URL(string: imageURL)) { image in
        image.resizable()
            .aspectRatio(contentMode: .fill)
            .blur(radius: 4.0)
    } placeholder: {
        ProgressView()
    }
    .cornerRadius(15)
    .padding(.horizontal, -20)
}

func cellView(movie: MovieViewModel) -> some View {
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
