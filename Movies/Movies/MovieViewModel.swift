//
//  MovieViewModel.swift
//  Movies
//
//  Created by Amir on 3/26/24.
//

import Foundation

struct MovieViewModel: Identifiable, Hashable {
    
    let id: UUID
    let title: String
    let year: String
    let genre: String
    let description: String
    let thumbURL: String
    
    init(movie: Movie) {
        self.id = movie.id ?? UUID()
        self.title = movie.title ?? ""
        self.year = movie.year ?? ""
        self.genre = movie.genre ?? ""
        self.description = movie.description ?? ""
        self.thumbURL = movie.thumbURL ?? ""
    }
}
