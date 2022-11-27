//
//  MoviesResponse.swift
//  Movie Challenge
//
//  Created by Carlos De la mora on 11/25/22.
//

import Apollo

struct MoviesResponse: QueryDataRepresentable {
    
    var movies: [Movie]
    
    init(data: GraphQLSelectionSet) throws {
        guard let data = data as? MoviesQuery.Data else {
            throw DataRepresentableError.wrongQuery("argument data should be of type MoviesQuery.Data")
        }
        self.movies = data.movies?.compactMap { Movie(movieDTO: $0) } ?? []
    }
    
    init(movies: [Movie]) {
        self.movies = movies
    }
}
