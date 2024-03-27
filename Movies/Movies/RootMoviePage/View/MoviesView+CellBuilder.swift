//
//  MovieListCellBuilder.swift
//  Movies
//
//  Created by Amir on 3/27/24.
//

import SwiftUI

extension MoviesView {
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
}
