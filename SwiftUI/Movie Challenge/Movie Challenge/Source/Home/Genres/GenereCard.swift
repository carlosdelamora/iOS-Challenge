//
//  GenereCard.swift
//  Movie Challenge
//
//  Created by Carlos De la mora on 11/27/22.
//

import SwiftUI

struct GenereCard: View {
    var text: String
    
    var body: some View {
        Button {
            print("Genere" + text + "tapped")
        } label: {
            BodyLargeSemibold(text)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background {
                    LinearGradient(
                        gradient: Gradient(colors: [.blue, .black, .blue]), startPoint: .bottomLeading, endPoint: .topTrailing)
                }
                .aspectRatio(1, contentMode: .fit)
                .clipShape(
                    RoundedRectangle(cornerRadius: 16, style: .continuous)
                )
        }
        .scaleEffectButtonStyle()
    }
}

struct GenereCard_Previews: PreviewProvider {
    static var previews: some View {
        GenereCard(text: "Browse All")
            .frame(width: 180, height: 180)
    }
}
