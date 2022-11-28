//
//  PreviewBrowseCategories.swift
//  Movie Challenge
//
//  Created by Carlos De la mora on 11/27/22.
//

import Foundation

struct PreviewBrowseCategories {
    static let browseCategories: BrowseCategories = {
        var categories = [BrowseCategory.all]
        for genre in PreviewGenresResponse.response.genres {
            categories.append(.genre(genre))
        }
        return BrowseCategories(categories: categories)
    }()
}
