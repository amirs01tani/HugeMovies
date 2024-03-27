//
//  MovieListCellBuilder.swift
//  Movies
//
//  Created by Amir on 3/27/24.
//

import SwiftUI

struct MovieCellView: View {
    
    let movieViewModel: MovieViewModel
    let cellHeight: CGFloat = 220
    let backgroundImageHeight: CGFloat = 218
    
    var body: some View {
        VStack(alignment: .leading) {
            makeTextWithBorderedBackground(title: movieViewModel.title)
                .foregroundStyle(.primary)
                .font(.title)
                .padding([.top], 8)
            Spacer()
            HStack {
                Spacer()
                makeTextWithBorderedBackground(title: movieViewModel.cellYear)
                    .foregroundStyle(.secondary)
                    .padding(.bottom, 8)
                
            }
        }.frame(height: cellHeight)
            .background(makeImageView(imageURL: movieViewModel.thumbURL, height: backgroundImageHeight))
    }
}
