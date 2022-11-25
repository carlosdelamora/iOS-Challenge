//
//  QueryDataRepresentable.swift
//  Movie Challenge
//
//  Created by Carlos De la mora on 11/25/22.
//

import Apollo

protocol QueryDataRepresentable {
    init (data: GraphQLSelectionSet) throws
}
