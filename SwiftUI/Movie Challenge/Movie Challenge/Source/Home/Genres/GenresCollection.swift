//
//  GenresCollection.swift
//  Movie Challenge
//
//  Created by Carlos De la mora on 11/27/22.
//

import SwiftUI

struct GenresCollection: View {
    
    //MARK: - API
    
    //MARK: - Constants
    
    //MARK: - Variables
    
    var browseCategories: BrowseCategories
    @EnvironmentObject var viewModel: MoviesContainerViewModel
    
    //MARK: - Body
    
    var body: some View {
        ScrollView([.horizontal], showsIndicators: false) {
            HStack(spacing: 20) {
                ForEach(browseCategories.categories, id: \.id) { category in
                    NavigationLink(
                        destination: VerticalMoviesCollection(browseCategory: category)
                    ) {
                        GenereCard(category: category)
                    }
                    .scaleEffectButtonStyle()
                }
            }
            .padding()
        }
    }
}

struct GenresCollection_Previews: PreviewProvider {
    static var previews: some View {
        GenresCollection(browseCategories: PreviewBrowseCategories.browseCategories)
    }
}
