//
//  FeaturedTabView.swift
//  touchDown
//
//  Created by Mohamed Magdy on 11/09/2023.
//

import SwiftUI

struct FeaturedTabView: View {
    var body: some View {
        TabView{
            ForEach(players){player in
                FeaturedItemView(player: player)
                
                    .padding(.top,10)
                    .padding(.horizontal,15)
                
            }
            
        }//: TABVIEW
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
    }
}

struct FeaturedTabView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedTabView()
            .previewDevice("iphone 12 pro")
            .background(.gray)
    }
}
