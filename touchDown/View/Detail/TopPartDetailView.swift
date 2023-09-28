//
//  TopPartDetailView.swift
//  touchDown
//
//  Created by Mohamed Magdy on 22/09/2023.
//

import SwiftUI

struct TopPartDetailView: View {
    @State private var isAnimating: Bool = false
    @EnvironmentObject var shop: Shop


    var body: some View {
        HStack(alignment: .center,spacing: 6, content: {
    
            //price
            
            VStack(alignment: .leading, spacing: 6, content: {
            
                Text("Price")
                    .fontWeight(.semibold)
                
                Text(shop.selectedProduct?.formattedPrice ?? sampleProduct.formattedPrice)
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .scaleEffect(1.36,anchor: .leading)
            })//: vstack
            
            .offset(y: isAnimating ? -50 : -75)
            
            Spacer()
            
            //photo
            Image(shop.selectedProduct?.image ?? sampleProduct.image)
                .resizable()
                .scaledToFit()
                .offset(y: isAnimating ? 0 : -35)
            
        })//: hstack
        
        .onAppear(perform: {
            withAnimation(.easeOut(duration: 0.75)){
                isAnimating.toggle()
            }
        })
        
    }
}

struct TopPartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TopPartDetailView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
