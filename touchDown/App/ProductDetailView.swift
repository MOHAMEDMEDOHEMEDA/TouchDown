//
//  ProductDetailView.swift
//  touchDown
//
//  Created by Mohamed Magdy on 22/09/2023.
//

import SwiftUI

struct ProductDetailView: View {
    
    let keyWindow = UIApplication.shared.connectedScenes
        .filter({$0.activationState == .foregroundActive})
        .compactMap({$0 as? UIWindowScene})
        .first?.windows
        .filter({$0.isKeyWindow}).first
    
    @EnvironmentObject var shop: Shop
    
    
    var body: some View {
        VStack(alignment: .leading,spacing: 5, content: {
            //navBar
            
            NavigationBarDetailView()
                .padding(.horizontal)
                .padding(.top,keyWindow?.safeAreaInsets.top)
            
            //header
            HeaderDetailView()
                .padding(.horizontal)
            //detail top part
            
            TopPartDetailView()
                .padding(.horizontal)
                .zIndex(1)
            //detail bottom part
            
            VStack(alignment: .center,spacing: 6, content: {
                
                //ratings + sizes
                
                RatingsSizesDetailView()
                    .padding(.top,-20)
                    .padding(.bottom,10)
                
                //description
                ScrollView(.vertical,showsIndicators: false,content: {
                    
                    Text(shop.selectedProduct?.description ?? sampleProduct.description)
                        .font(.system(.body,design: .rounded))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                    
                })//: scroll
                
                //quantity + favourite
                
                QuantityfavouriteDetailView()
                    .padding(.vertical,10)
                //add to cart
                
                AddToCartDetailView()
                    .padding(.bottom,20)
            })//: vstack
            .padding(.horizontal)
            .background(
                Color.white.clipShape(CustomShape())
                    .padding(.top,-105)
            )
        })//: vStack
        .zIndex(0)
        .ignoresSafeArea(.all,edges: .all)
        .background(Color(
            red:shop.selectedProduct?.red ?? sampleProduct.red,
            green:shop.selectedProduct?.green ?? sampleProduct.green,
            blue:shop.selectedProduct?.blue ?? sampleProduct.blue)
            .ignoresSafeArea(.all,edges: .all)
        )
        
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
            .environmentObject(Shop())
            .previewLayout(.fixed(width: 375, height: 812))
    }
}
