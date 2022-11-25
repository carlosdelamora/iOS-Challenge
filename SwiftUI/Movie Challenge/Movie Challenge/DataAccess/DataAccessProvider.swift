//
//  DataAccessProvider.swift
//  Movie Challenge
//
//  Created by Carlos De la mora on 11/25/22.
//

import Apollo

protocol DataAccessProvider {
    func `get`<T: QueryDataRepresentable, Query: GraphQLQuery>(
        type: T.Type,
        graphQLQuery: Query
    ) async throws -> T
}
