//
//  NavigationBarDetailView.swift
//  touchDown
//
//  Created by Mohamed Magdy on 22/09/2023.
//

import SwiftUI



struct NavigationBarDetailView: View {
    
    @EnvironmentObject var shop: Shop

    var body: some View {
        HStack{
            
            Button(action: {
                feedBack.impactOccurred()
                withAnimation(.easeIn){
                    shop.showingProduct=false
                    shop.selectedProduct=nil
                }
                
            }, label: {
                Image(systemName: "chevron.left")
                    .font(.title)
                    .foregroundColor(.white)
                
            })
            Spacer()
            
            Button(action: {
                feedBack.impactOccurred()
            }, label: {
                Image(systemName: "cart")
                    .font(.title)
                    .foregroundColor(.white)
                
            })
        }//: Hstack
    }
}

struct NavigationBarDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarDetailView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray)
    }
}
