//
//  MoviesTests.swift
//  MoviesTests
//
//  Created by Amir on 3/26/24.
//

import XCTest
@testable import Movies

class MoviesViewTests: XCTestCase {

    func test_loadMovies_requestMoviesFromLoader() {
        let loader = LoaderSpy()
        let sut = MoviesView(viewModel: MoviesViewModel(loader: loader), content: { viewModel in MovieDetailView(viewModel: viewModel) })
        
        XCTAssertEqual(loader.loadCallCount, 0)
        
    }

}

extension MoviesViewTests {
    class LoaderSpy: MovieDataLoader {
        
        var loadCallCount: Int = 0
        
        func getData() async -> [Movies.Movie] {
            loadCallCount += 1
            return [Movies.Movie]()
        }
        
    }
}
