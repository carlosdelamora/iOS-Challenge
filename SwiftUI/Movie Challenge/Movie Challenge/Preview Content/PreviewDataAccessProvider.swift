//
//  PreviewDataAccessProvider.swift
//  Movie Challenge
//
//  Created by Carlos De la mora on 11/27/22.
//

import Apollo

struct PreviewDataAccessProvider: DataAccessProvider {
    func get<T, Query>(type: T.Type, graphQLQuery: Query) async throws -> T where T : QueryDataRepresentable, Query : Apollo.GraphQLQuery {
        switch type {
        case is MoviesResponse.Type:
            return PreviewMoviesResponse.response as! T
        case is GenresResponse.Type:
            return PreviewGenresResponse.response as! T
        case is TopMovieResponse.Type:
            return PreviewTopMoviesResponse.response as! T
        default: fatalError("write support for other types")
        }
    }
    
    
}
