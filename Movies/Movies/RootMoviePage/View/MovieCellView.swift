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
            Text(movieViewModel.title)
                .customText()
                .foregroundStyle(.primary)
                .font(.title)
                .padding([.top], 8)
            Spacer()
            HStack {
                Spacer()
                Text(movieViewModel.cellYear)
                    .customText()
                    .foregroundStyle(.secondary)
                    .padding(.bottom, 8)
                
            }
        }.frame(height: cellHeight)
            .background(makeImageView(imageURL: movieViewModel.thumbURL, height: backgroundImageHeight))
    }
}
