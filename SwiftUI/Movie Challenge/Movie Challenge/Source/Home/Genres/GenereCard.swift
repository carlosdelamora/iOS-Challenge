//
//  GenereCard.swift
//  Movie Challenge
//
//  Created by Carlos De la mora on 11/27/22.
//

import SwiftUI

struct GenereCard: View {
    
    //MARK: - API
    
    init(category: BrowseCategory) {
        self.category = category
    }
    
    //MARK: - Constants
    
    let category: BrowseCategory
    
    //MARK: - Variables
    
    // MARK: - Body
    
    var body: some View {
        BodyLargeSemibold(category.displayText)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background {
                LinearGradient(
                    gradient: Gradient(colors: [.blue, .background,.background, .blue]), startPoint: .bottomLeading, endPoint: .topTrailing)
            }
            .aspectRatio(1, contentMode: .fit)
            .clipShape(
                RoundedRectangle(cornerRadius: 16, style: .continuous)
            )
        
    }
}

struct GenereCard_Previews: PreviewProvider {
    static var previews: some View {
        GenereCard(category: .all)
            .frame(width: 180, height: 180)
    }
}
