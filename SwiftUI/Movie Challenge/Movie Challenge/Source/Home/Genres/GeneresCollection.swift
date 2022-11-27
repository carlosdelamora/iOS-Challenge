//
//  GeneresCollection.swift
//  Movie Challenge
//
//  Created by Carlos De la mora on 11/27/22.
//

import SwiftUI

struct GeneresCollection: View {
    
    var generes: [String]
    var body: some View {
        ScrollView([.horizontal]) {
            HStack(spacing: 20) {
                ForEach(generes, id: \.self) { genere in
                    GenereCard(text: genere)
                }
            }
            .padding()
        }
    }
}

struct GeneresCollection_Previews: PreviewProvider {
    static var previews: some View {
        GeneresCollection(generes: [
            "Browse All",
            "Comedy",
            "Science Fiction",
            "Fantasy",
            "Adventure",
            "Family"]
        )
    }
}
