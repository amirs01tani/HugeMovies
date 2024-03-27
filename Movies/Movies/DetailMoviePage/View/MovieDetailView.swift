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
    let imageHeight: CGFloat = 500
    let scrollViewPadding: CGFloat = 24
    var body: some View {
        ScrollView {
            HStack {
                makeTextWithBorderedBackground(title: viewModel.genre)
                makeTextWithBorderedBackground(title: viewModel.year)
                Spacer()
            }
            Text(viewModel.description)
                .font(.subheadline)
            makeImageView(imageURL: viewModel.thumbURL, blurRadius: 0, height: imageHeight)
                .frame(height: imageHeight)
            
        }.padding(.horizontal, scrollViewPadding)
        .navigationTitle(viewModel.navTitle)
    }
}

#Preview {
    MovieDetailView(viewModel: MovieViewModel(movie: MoviesSampleData().getData()[0]))
}
