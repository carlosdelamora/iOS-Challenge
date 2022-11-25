//
//  DefaultDataAccessProvider.swift
//  Movie Challenge
//
//  Created by Carlos De la mora on 11/25/22.
//

import Apollo
import Factory

class DefaultDataAccessProvider: DataAccessProvider {
   
    //MARK: - API
    
    func get<T: QueryDataRepresentable, Query: GraphQLQuery>(
        type: T.Type,
        graphQLQuery: Query
    ) async throws -> T {
        let respone = try await withCheckedThrowingContinuation { (continuation: CheckedContinuation<GraphQLResult<Query.Data>, any Error>) in
            network.apollo.fetch(query: graphQLQuery) { response in
                continuation.resume(with: response)
            }
        }
        guard let data = respone.data else { throw MissingData() }
        return try type.init(data: data)
    }
    
    //MARK: - Constants
    
    //MARK: - Variables
    
    @Injected(Container.network) var network
    
    struct MissingData: Error {}
}
