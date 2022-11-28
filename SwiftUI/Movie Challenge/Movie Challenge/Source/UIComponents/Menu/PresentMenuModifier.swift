//
//  PresentMenuModifier.swift
//  Movie Challenge
//
//  Created by Carlos De la mora on 11/28/22.
//

import SwiftUI

struct PresentMenuModifier: ViewModifier {
    
    @Binding var isPresented: Bool
    weak var delegate: MenuDelegate?
    var menuItems: [String]
    
    func body(content: Content) -> some View {
        content
            .overlay {
                if isPresented {
                    MenuView(delegate: delegate, menuItems: menuItems)
                        .onTapGesture {
                            isPresented = false
                        }
                }
            }
            .animation(.easeInOut(duration: 0.3), value: isPresented)
    }
}

extension View {
    
    func menuOverlay(
        isPresented: Binding<Bool>,
        delegate: MenuDelegate,
        menuItems: [String]
    ) -> some View {
        self.modifier(PresentMenuModifier(isPresented: isPresented,delegate: delegate, menuItems: menuItems))
    }
}
