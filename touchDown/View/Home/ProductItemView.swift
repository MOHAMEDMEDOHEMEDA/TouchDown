//
//  ProductItemView.swift
//  touchDown
//
//  Created by Mohamed Magdy on 21/09/2023.
//

import SwiftUI

struct ProductItemView: View {
    
    
    // MARK: - properties
    
    let product:Product
    
    // MARK: - body
    var body: some View {

        VStack(alignment: .leading,spacing: 6, content: {
            //phote
            
            ZStack {
                Image(product.image)
                    .resizable()
                    .scaledToFit()
                    .padding(10)
                  
            }
            .background(Color(red: product.red, green: product.green, blue: product.blue))
            .cornerRadius(12)
            
            //name
            
            Text(product.name)
                .font(.title3)
                .fontWeight(.black)
            //price
            
            Text(product.formattedPrice)
                .fontWeight(.semibold)
                .foregroundColor(.gray)
            
        })//: vstack

    }
}
// MARK: - preview
struct ProductItemView_Previews: PreviewProvider {
    static var previews: some View {
        ProductItemView(product: products[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
