//
//  CategoryGridView.swift
//  touchDown
//
//  Created by Mohamed Magdy on 15/09/2023.
//

import SwiftUI

struct CategoryGridView: View {
    var body: some View {
        ScrollView(.horizontal ,showsIndicators: false) {
            LazyHGrid(rows: gridLayout,alignment: .center,spacing: columnSpacing, pinnedViews: [] ,content: {
                Section(
                    header:SectionView(rotateClockWise: false),
                    footer: SectionView(rotateClockWise: true)
                )
                {
                    ForEach(categories){ category in
                        CategoryItemView(category: category)
                        
                    }
                }
            })//: grid
            
            .frame(height: 140)
            .padding(.horizontal,15)
            .padding(.vertical,10)
        }//: scroll
    }
}

struct CategoryGridView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryGridView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
