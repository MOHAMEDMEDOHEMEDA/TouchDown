//
//  HeaderDetailView.swift
//  touchDown
//
//  Created by Mohamed Magdy on 22/09/2023.
//

import SwiftUI

struct HeaderDetailView: View {
    
    
    @EnvironmentObject var shop: Shop
    var body: some View {
        
        VStack(alignment: .leading, spacing: 6, content: {
           
            Text("protective gear")
            
            Text(shop.selectedProduct?.name ?? sampleProduct.name)
                .font(.title)
                .fontWeight(.black)
            
        })//: vstack
        .foregroundColor(.white)
        
    }
}

struct HeaderDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderDetailView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
            .background(.gray)
    }
}
