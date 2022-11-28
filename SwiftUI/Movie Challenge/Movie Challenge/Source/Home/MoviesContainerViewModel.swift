//
//  MoviesContainerViewModel.swift
//  Movie Challenge
//
//  Created by Carlos De la mora on 11/27/22.
//

import Foundation
import Factory
import SwiftUI
import Combine

@MainActor
class MoviesContainerViewModel: ObservableObject {
    
    //MARK: - API
    
    @Published var data = MoviesContainerData()


    func viewWillAppear() async {
       let moviesResponse = (try? await dataAccessProvider.get(type: MoviesResponse.self, graphQLQuery: MoviesQuery())) ?? MoviesResponse(movies: [])
        let topMoviesResponse = (try? await dataAccessProvider.get(type: TopMovieResponse.self, graphQLQuery: MoviesQuery(sort: .desc, orderBy: MoviesOrder.voteAverage.asQueryArgument, limit: 5))) ?? TopMovieResponse(movies: [])
        let genresResponse = (try? await dataAccessProvider.get(type: GenresResponse.self, graphQLQuery: GenresQuery())) ?? GenresResponse(genres: [])
        data = MoviesContainerData(
            moviesResponse: moviesResponse,
            topMoviesResponse: topMoviesResponse,
            genresResponse: genresResponse)
    }
    
    
    //MARK: - Constants
    
    //MARK: - Variables
    
    @Injected(Container.dataAccessProvider) private var dataAccessProvider
    private var cancellables = Set<AnyCancellable>()
}
