//
//  GenresResponse.swift
//  Movie Challenge
//
//  Created by Carlos De la mora on 11/27/22.
//

import Apollo

struct GenresResponse: QueryDataRepresentable {
    
    var genres: [String]
    
    init(data: GraphQLSelectionSet) throws {
        guard let data = data as? GenresQuery.Data else {
            throw DataRepresentableError.wrongQuery("argument data should be of type GeneresQuery.Data")
        }
        self.genres = data.genres
    }
    
    init(genres: [String]) {
        self.genres = genres
    }
}
