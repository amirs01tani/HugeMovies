//
//  ContentView.swift
//  Movies
//
//  Created by Amir on 3/26/24.
//

import SwiftUI

struct ContentView: View {
    var viewModel = MoviesViewModel(movies: MoviesSampleData.getData())
    var body: some View {
        NavigationSplitView {
            List(viewModel.movies) { movie in
                NavigationLink(movie.title, value: movie)
            }.navigationTitle("Movies")
        } detail: {
            
        }
    }
}


#Preview {
    ContentView(viewModel: MoviesViewModel(movies: MoviesSampleData.getData()))
}
