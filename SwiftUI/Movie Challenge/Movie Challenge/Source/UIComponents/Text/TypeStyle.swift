//
//  TypeStyle.swift
//  BlockDirectory
//
//  Created by Carlos De la mora on 11/20/22.
//

import SwiftUI

struct TypeStyle {
    var fontSize: CGFloat
    var weight: Font.Weight
    
    var font: Font {
        return .system(size: fontSize, weight: weight)
    }
}
