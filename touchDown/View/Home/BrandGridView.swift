//
//  BrandGridView.swift
//  touchDown
//
//  Created by Mohamed Magdy on 21/09/2023.
//

import SwiftUI

struct BrandGridView: View {
    var body: some View {
        ScrollView(.horizontal,showsIndicators: false,content: {
            LazyHGrid(rows: gridLayout,spacing: columnSpacing, content: {
                ForEach(brands){ brand in
                    BrandItemView(barnd: brand)
                    
                }
            })//: hGrid
            .frame(height: 200)
            .padding(15)
        })//: scrollView
       

    }
}

struct BrandGridView_Previews: PreviewProvider {
    static var previews: some View {
        BrandGridView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
