//
//  FeaturedItemView.swift
//  touchDown
//
//  Created by Mohamed Magdy on 11/09/2023.
//

import SwiftUI

struct FeaturedItemView: View {
    
    // MARK: - properties
    let player : player
    
    // MARK: - body
    var body: some View {
        Image(player.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(13)
    }
}

// MARK: -  preview
struct FeaturedItemView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedItemView(player: players[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
