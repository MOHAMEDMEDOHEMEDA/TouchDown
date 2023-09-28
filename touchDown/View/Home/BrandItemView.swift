//
//  BrandItemView.swift
//  touchDown
//
//  Created by Mohamed Magdy on 21/09/2023.
//

import SwiftUI

struct BrandItemView: View {
    
   let barnd : Brand
    var body: some View {
       
        VStack{
            Image(barnd.image)
                .resizable()
                .scaledToFit()
                .padding()
                .background(Color.white.cornerRadius(12))
                .background(
                    RoundedRectangle(cornerRadius: 12).stroke(.gray,lineWidth: 1)
                )
        }
    }
}

struct BrandItemView_Previews: PreviewProvider {
    static var previews: some View {
        BrandItemView(barnd: brands[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
