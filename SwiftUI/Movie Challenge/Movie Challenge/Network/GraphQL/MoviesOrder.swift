//
//  MoviesOrder.swift
//  Movie Challenge
//
//  Created by Carlos De la Mora on 11/27/22.
//

import Foundation

enum MoviesOrder: CaseIterable {
    case voteAverage
    case popularity
    case releaseDate
    case title
    case `none`
    
    var displayText: String {
        switch self {
        case .voteAverage:
            return "Vote Average"
        case .releaseDate:
            return "Release Date"
        case .popularity:
            return "Popularity"
        case .title:
            return "Title"
        case .none:
            return "All"
        }
    }
    
    var asQueryArgument: String? {
        switch self {
        case .voteAverage:
            return "voteAverage"
        case .releaseDate:
            return "releaseDate"
        case .popularity:
            return "popularity"
        case .title:
            return "title"
        case .none:
            return nil
        }
    }
}
