//
//  StyledText.swift
//  BlockDirectory
//
//  Created by Carlos De la mora on 11/20/22.
//

import SwiftUI

struct StyledText: View {
    
    //MARK: - API
    
    init(_ text: String, typeStyle: TypeStyle) {
        self.text = text
        self.typeStyle = typeStyle
    }
    
    //MARK: - Constants
    
    //MARK: - Variables
    
    //MARK: - Body
    var body: some View {
        Text(text)
            .font(typeStyle.font)
            .foregroundColor(Color.white)
    }
    
    private let text: String
    private let typeStyle: TypeStyle
}

struct StyledText_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            StyledText("BodyLargeRegular", typeStyle: TypeStyles.bodyLargeRegular)
            StyledText("BodyLargeBold", typeStyle: TypeStyles.bodyLargeBold)
            StyledText("BodyLargeSemibold", typeStyle: TypeStyles.bodyLargeSemibold)
        }
        .background(Color.background)
    }
}
