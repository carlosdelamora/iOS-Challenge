//
//  VerticalMoviesCollection.swift
//  Movie Challenge
//
//  Created by Carlos De la mora on 11/27/22.
//

import SwiftUI
import Factory

struct VerticalMoviesCollection: View {
    
    //MARK: - API
    
    init(browseCategory: BrowseCategory) {
        self._viewModel = StateObject(
            wrappedValue: VerticalMoviesCollectionViewModel(browseCategory: browseCategory)
        )
    }
    
    //MARK: - Constants
    
    //MARK: - Variables
    
    @StateObject private var viewModel: VerticalMoviesCollectionViewModel
    
    //MARK: - Body
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            LazyVStack(pinnedViews: [.sectionHeaders]) {
                Section(header: headerView) {
                    ForEach(viewModel.data.movies, id: \.id) { movie in
                        HStack {
                            MovieCard(path: movie.posterPath)
                                .frame(height: 140)
                            BodyLargeSemibold(movie.title.capitalized)
                                .frame(maxWidth: .infinity)
                        }
                    }
                }
            }
            .padding()
        }
        .background(Color.background)
        .task {
            await viewModel.viewWillAppear()
        }
        .menuOverlay(isPresented: $viewModel.isMenuPresent, delegate: viewModel, menuItems: viewModel.menuItems)
    }
    
    var headerView: some View {
        ZStack {
            Color.black.opacity(0.5)
            VStack {
                BodyLargeRegular(viewModel.title)
                filterView
            }
        }
       
    }
    
    var filterView: some View {
        Button {
            viewModel.isMenuPresent = true
        } label: {
            HStack {
                BodyMediumSemibold(viewModel.orderButtonLabel)
                Image(systemName: "arrowtriangle.down.fill")
                Spacer()
            }
            .foregroundColor(Color.white)
        }
    }
}

struct VericalMoviesCollection_Previews: PreviewProvider {
    static var previews: some View {
        let _ = Container.dataAccessProvider.register {
            PreviewDataAccessProvider()
        }
        VerticalMoviesCollection(browseCategory: .all)
    }
}
