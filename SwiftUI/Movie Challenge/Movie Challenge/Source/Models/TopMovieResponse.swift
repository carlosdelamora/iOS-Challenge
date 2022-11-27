//
//  TopMovieResponse.swift
//  Movie Challenge
//
//  Created by Carlos De la mora on 11/25/22.
//

import Apollo

struct TopMovieResponse: QueryDataRepresentable {
    
    var movies: [TopMovie]
    
    init(data: GraphQLSelectionSet) throws {
        guard let data = data as? TopMoviesQuery.Data else {
            throw DataRepresentableError.wrongQuery("argument data should be of type MoviesQuery.Data")
        }
        self.movies = data
            .movies?
            .filter( { $0 != nil })
            .enumerated()
            .compactMap { TopMovie(topMovieDTO: $0.1, position: $0.0) } ?? []
    }
    
    init(movies: [TopMovie]) {
        self.movies = movies
    }
}
