//
//  MenuView.swift
//  Movie Challenge
//
//  Created by Carlos De la mora on 11/28/22.
//

import SwiftUI

struct MenuView: View {
    
    //MARK: - API
    
    init(delegate: MenuDelegate?, menuItems: [String]) {
        self.delegate = delegate
        self.menuItems = menuItems
    }
    
    //MARK: - Constants
    
    //MARK: - Variables
    
    var menuItems: [String]
    weak var delegate: MenuDelegate?
    
    var body: some View {
        ZStack {
            Color
                .blue
                .grayscale(0.9)
                .opacity(0.2)
                .background(.regularMaterial)
                .ignoresSafeArea()
            VStack(spacing: 20) {
                ForEach(menuItems, id: \.self) { item in
                    Button {
                        delegate?.didSelect(item: item)
                    } label: {
                        BodyMediumRegular(item)
                    }
                }
            }
        }
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView(delegate: nil, menuItems: ["Popularity", "Vote Average"])
    }
}
