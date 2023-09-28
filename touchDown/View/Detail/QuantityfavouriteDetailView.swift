//
//  QuantityfavouriteDetailView.swift
//  touchDown
//
//  Created by Mohamed Magdy on 24/09/2023.
//

import SwiftUI

struct QuantityfavouriteDetailView: View {
    
    @State private var counter: Int = 0
    var body: some View {
        HStack(alignment: .center, spacing: 6, content: {
            
            Button(action: {
                if counter>0 {
                    feedBack.impactOccurred()
                    counter-=1
                }
            }, label: {
                Image(systemName: "minus.circle")
            })
            
            
            Text("\(counter)")
            
            
            Button(action: {
                if counter < 100{
                    feedBack.impactOccurred()
                    counter+=1
                }
            }, label: {
                Image(systemName: "plus.circle")
            })
            
            Spacer()
            
            Button(action: {
                feedBack.impactOccurred()
            }, label: {
                Image(systemName: "heart.circle")
                    .foregroundColor(.pink)
            })
            
            
            
            
            
        })//: hstack
        .font(.system(.title,design:.rounded))
        .foregroundColor(.black)
        .imageScale(.large)
    }
}

struct QuantityfavouriteDetailView_Previews: PreviewProvider {
    static var previews: some View {
        QuantityfavouriteDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
