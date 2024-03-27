//
//  MovieDetailView.swift
//  Movies
//
//  Created by Amir on 3/27/24.
//

import Foundation
import SwiftUI

struct MovieDetailView: View {
    var viewModel: MovieViewModel
    
    var body: some View {
        ScrollView {
            HStack {
                makeTextWithBorderedBackground(title: viewModel.genre)
                makeTextWithBorderedBackground(title: viewModel.year)
                Spacer()
            }
            Text(viewModel.description)
                .font(.subheadline)
            makeImageView(imageURL: viewModel.thumbURL, blurRadius: 0, height: 500)
                .frame(height: 500)
            
        }.padding(.horizontal, 24)
        .navigationTitle(viewModel.title)
    }
}

#Preview {
    MovieDetailView(viewModel: MovieViewModel(movie: MoviesSampleData.getData()[0]))
}
