//
//  Container+Extensions.swift
//  Movie Challenge
//
//  Created by Carlos De la mora on 11/23/22.
//

import Factory

extension Container {
    static let network = Factory(scope: .singleton) { Network.shared }
    static let dataAccessProvider = Factory(scope: .shared) { DefaultDataAccessProvider() as DataAccessProvider }
}
