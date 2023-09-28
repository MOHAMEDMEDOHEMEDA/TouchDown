//
//  CategoryItemView.swift
//  touchDown
//
//  Created by Mohamed Magdy on 15/09/2023.
//

import SwiftUI

struct CategoryItemView: View {
    // MARK: - properties
    
    let category: Category
    // MARK: - body
    var body: some View {
        Button(action: {}) {
            
            HStack(alignment: .center, spacing: 6) {
                Image(category.image)
                    .renderingMode(.template)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30,height: 30,alignment: .center)
                    .foregroundColor(.gray)
                Text(category.name.uppercased())
                    .fontWeight(.light)
                    .foregroundColor(.gray)
                
                Spacer()
            }//: hstack
            .padding()
            .background(Color.white.cornerRadius(12))
            .background(RoundedRectangle(cornerRadius: 12)
                .stroke(.gray,lineWidth: 1)
            )
        
        }//: button
    }
}
// MARK: - preview
struct CategoryItemView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItemView(category: categories[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
        
    }
}
