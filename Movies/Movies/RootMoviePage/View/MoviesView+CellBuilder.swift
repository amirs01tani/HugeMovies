//
//  MovieListCellBuilder.swift
//  Movies
//
//  Created by Amir on 3/27/24.
//

import SwiftUI

extension MoviesView {
    func cellView(movieViewModel: MovieViewModel) -> some View {
        VStack(alignment: .leading) {
            makeTextWithBorderedBackground(title: movieViewModel.title)
                .foregroundStyle(.primary)
                .font(.title)
                .padding([.top], 8)
            Spacer()
            HStack {
                Spacer()
                makeTextWithBorderedBackground(title: movieViewModel.navTitle)
                    .foregroundStyle(.secondary)
                    .padding(.bottom, 8)
                
            }
        }.frame(height: cellHeight)
    }
}
