//
//  MoviesContainerData.swift
//  Movie Challenge
//
//  Created by Carlos De la mora on 11/27/22.
//

import Foundation

struct MoviesContainerData {
    var moviesResponse: MoviesResponse
    var topMoviesResponse: TopMovieResponse
    var browseCategories: BrowseCategories
    
    init(moviesResponse: MoviesResponse, topMoviesResponse: TopMovieResponse, genresResponse: GenresResponse) {
        self.moviesResponse = moviesResponse
        self.topMoviesResponse = topMoviesResponse
        var categories = [BrowseCategory.all]
        for genre in genresResponse.genres {
            let category = BrowseCategory.genre(genre)
            categories.append(category)
        }
        self.browseCategories = BrowseCategories(categories: categories)
    }
    
    init() {
        self.moviesResponse = MoviesResponse(movies: [])
        self.topMoviesResponse = TopMovieResponse(movies: [])
        self.browseCategories = BrowseCategories(categories: [.all])
    }
}
