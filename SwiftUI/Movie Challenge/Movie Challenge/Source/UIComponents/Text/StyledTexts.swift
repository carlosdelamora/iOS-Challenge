//
//  StyledTexts.swift
//  BlockDirectory
//
//  Created by Carlos De la mora on 11/20/22.
//

import SwiftUI

private protocol TextComponent: View {
    var styledText: StyledText { get }
}

extension TextComponent {
    public var body: some View {
        styledText
    }
}

/// Resuable component to display ``bodyLargeRegular`` TypeStyle
struct BodyLargeRegular: TextComponent {
    
    //MARK: - API
    
    init(_ text: String) {
        styledText = StyledText(text, typeStyle: TypeStyles.bodyLargeRegular)
    }
    
    //MARK: - Constants
    
    //MARK: - Variables
    let styledText: StyledText
}

/// Resuable component to display ``bodyLargeSemibold`` TypeStyle
struct BodyLargeSemibold: TextComponent {
    //MARK: - API
    
    init(_ text: String) {
        styledText = StyledText(text, typeStyle: TypeStyles.bodyLargeSemibold)
    }
    
    //MARK: - Constants
    
    //MARK: - Variables
    let styledText: StyledText
}

/// Resuable component to display ``bodyLargeSemibold`` TypeStyle
struct BodyLargeBold: TextComponent {
    //MARK: - API
    
    init(_ text: String) {
        styledText = StyledText(text, typeStyle: TypeStyles.bodyLargeBold)
    }
    
    //MARK: - Constants
    
    //MARK: - Variables
    let styledText: StyledText
}



/// Resuable component to display ``bodyMediumRegular`` TypeStyle
struct BodyMediumRegular: TextComponent {
    
    //MARK: - API
    
    init(_ text: String) {
        styledText = StyledText(text, typeStyle: TypeStyles.bodyMediumRegular)
    }
    
    //MARK: - Constants
    
    //MARK: - Variables
    let styledText: StyledText
}

/// Resuable component to display ``bodyLargeSemibold`` TypeStyle
struct BodyMediumSemibold: TextComponent {
    //MARK: - API
    
    init(_ text: String) {
        styledText = StyledText(text, typeStyle: TypeStyles.bodyMediumSemibold)
    }
    
    //MARK: - Constants
    
    //MARK: - Variables
    let styledText: StyledText
}
