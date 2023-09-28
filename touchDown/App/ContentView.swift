//
//  ContentView.swift
//  touchDown
//
//  Created by Mohamed Magdy on 10/09/2023.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: - Properties
    
    @EnvironmentObject var shop : Shop
    
    // MARK: - body
    var body: some View {
        
        GeometryReader{ geometry in
            ZStack {
                if shop.showingProduct == false && shop.selectedProduct == nil {
                    VStack(alignment: .leading, spacing: 0) {
                        
                        NavigationBarView()
                            .padding(.horizontal,5)
                            .padding(.top,geometry.safeAreaInsets.top)
                            .padding(.bottom)
                            .background(.white)
                            .shadow(color: .black.opacity(0.05), radius: 5 , x: 0 , y: 5)
                        
                        ScrollView(.vertical ,showsIndicators: false, content: {
                            VStack(spacing: 0){
                                
                                FeaturedTabView()
                                
                                    .frame(minHeight: 259)
                                
                                    .padding(.vertical, 10)
                                
                                CategoryGridView()
                                
                                
                                TitleView(title: "Helmets")
                                
                                
                                LazyVGrid(columns: gridLayout,spacing: 15, content: {
                                    ForEach(products){product in
                                        ProductItemView(product: product)
                                            .onTapGesture(){
                                                feedBack.impactOccurred()
                                                withAnimation(.easeOut){
                                                    
                                                    shop.showingProduct=true
                                                    shop.selectedProduct=product
                                                }
                                            }
                                        
                                        
                                    }
                                })
                                .padding(15)
                                
                                
                                TitleView(title: "Brands")
                                
                                
                                BrandGridView()
                                
                                FooterView()
                                    .padding(.horizontal)
                                
                            }
                            
                        })
                        
                    }//: VSTACK
                    .background(colorBackground.ignoresSafeArea(.all,edges: .all))
                } else {
                    ProductDetailView()
                }
            }//: ZSTACK
            .ignoresSafeArea(.all,edges: .top)
        }
    }
            
        }
        
        
// MARK: - preview

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(Shop())
    }
}
