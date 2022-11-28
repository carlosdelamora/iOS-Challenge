//
//  BrowseCategory.swift
//  Movie Challenge
//
//  Created by Carlos De la mora on 11/27/22.
//

import Foundation

enum BrowseCategory: Identifiable {
    case genre(String)
    case all
    
    var displayText: String {
        switch self {
        case let .genre(text): return text
        case .all: return "Browse All"
        }
    }
    
    var id: String {
        return displayText
    }
}
