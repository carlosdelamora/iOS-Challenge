//
//  MoviesContainerView.swift
//  Movie Challenge
//
//  Created by Carlos De la mora on 11/25/22.
//

import SwiftUI
import Factory

struct MoviesContainerView: View {
    
    //MARK: - API
    
    //MARK: - Constants

    let collectionsHeight: CGFloat = 280
    
    //MARK: - Variables
    
    @StateObject var viewModel = MoviesContainerViewModel()
    
    //MARK: - Body
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading, spacing: 0) {
                    BodyLargeBold("Top Movies")
                        .padding(.leading, 16)
                    TopMoviesCollection(topMoviesResponse: viewModel.data.topMoviesResponse)
                        .frame(height: collectionsHeight)
                    BodyLargeBold("Genres")
                        .padding(.leading, 16)
                    GenresCollection(browseCategories: viewModel.data.browseCategories)
                        .frame(height: collectionsHeight)
                        .environmentObject(viewModel)
                    BodyLargeBold("Browse All")
                        .padding(.leading, 16)
                    HorizontalMoviesCollection(moviesResponse: viewModel.data.moviesResponse)
                        .frame(height: collectionsHeight)
                }
            }
            .background(Color.background)
            .task {
                await viewModel.viewWillAppear()
            }
        }
    }
}

struct MoviesContainerView_Previews: PreviewProvider {
    
    static var previews: some View {
        let _ = Container.dataAccessProvider.register {
            PreviewDataAccessProvider()
        }
        MoviesContainerView()
    }
}
