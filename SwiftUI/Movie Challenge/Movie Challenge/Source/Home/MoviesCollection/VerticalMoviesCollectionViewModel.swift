//
//  VerticalMoviesCollectionViewModel.swift
//  Movie Challenge
//
//  Created by Carlos De la mora on 11/27/22.
//

import Foundation
import Factory

@MainActor
class VerticalMoviesCollectionViewModel: ObservableObject {
    
    //MARK: - API
    
    @Published var data = MoviesResponse(movies: [])
    @Published var order: MoviesOrder = .none
    @Published var isMenuPresent: Bool = false
    /// Init with a nil value corresponds to the Browse All case
    init(browseCategory: BrowseCategory) {
        switch browseCategory {
        case let .genre(selectedGenre): self.selectedGenre = selectedGenre
        case .all: self.selectedGenre = nil
        }
        self.browseCategory = browseCategory
    }
    
    func viewWillAppear() async {
        await loadMovies(order: .none)
    }
    
    func filterMenuDidSelect(item: String) async {
        guard let order = orderHash[item] else { return }
        await loadMovies(order: order)
    }
    
    var orderButtonLabel: String {
        order.displayText
    }
    
    var title: String {
        browseCategory.displayText
    }
    
    var menuItems: [String] = {
        MoviesOrder.allCases.map({ $0.displayText }).sorted(by: <)
    }()
    
    //MARK: - Constants
    
    //MARK: - Variables
    
    
    @Injected(Container.dataAccessProvider) private var dataAccessProvider
    
    private func loadMovies(order: MoviesOrder) async {
        do {
            let data = try await dataAccessProvider.get(
                type: MoviesResponse.self,
                graphQLQuery: MoviesQuery(genre: selectedGenre, sort: .desc, orderBy: order.asQueryArgument)
            )
            // If it succeeds we update the view with the new data.
            self.data = data
            self.order = order
        } catch {
            print("Failed with error \(error)")
        }
    }
    
    private lazy var orderHash: [String: MoviesOrder] = {
        var hash = [String: MoviesOrder]()
        for order in MoviesOrder.allCases {
            hash[order.displayText] = order
        }
        return hash
    }()
    
    private var selectedGenre: String?
    private var browseCategory: BrowseCategory
}

extension VerticalMoviesCollectionViewModel: MenuDelegate {
    
    func didSelect(item: String) {
        guard let order = orderHash[item] else { return }
        Task {
            await loadMovies(order: order)
            isMenuPresent = false
        }
    }
}
