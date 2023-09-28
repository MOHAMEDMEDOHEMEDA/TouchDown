//
//  RatingsSizesDetailView.swift
//  touchDown
//
//  Created by Mohamed Magdy on 24/09/2023.
//

import SwiftUI

struct RatingsSizesDetailView: View {
    
    // MARK: - properties
    let sizes: [String] = ["XS","S","M","L","XL"]
    
    
    // MARK: - body
    var body: some View {
        HStack(alignment: .top, spacing: 3,content: {
            
            //ratings
            
            VStack(alignment: .leading,spacing: 3, content: {
                Text("Ratings")
                    .font(.footnote)
                    .foregroundColor(colorGray)
                    .fontWeight(.semibold)
                
                
                HStack(alignment: .center,spacing: 3 ,content: {
                    
                    ForEach(1...5,id: \.self ) { item in
                        Button(action: {}, label: {
                            Image(systemName: "star.fill")
                                .frame(width: 28,height: 28,alignment: .center)
                                .background(colorGray.cornerRadius(5))
                                .foregroundColor(.white)
                        })
                    }
                    
                })//: hstack
            })//: vstack
            
            Spacer()
            
            //sizes
            
            VStack(alignment: .trailing,spacing: 3, content: {
                Text("Sizes")
                    .font(.footnote)
                    .foregroundColor(colorGray)
                    .fontWeight(.semibold)
                
                
                HStack(alignment: .center, spacing: 5, content: {
                    ForEach(sizes,id: \.self ){ size in
                        Button(action: {}, label: {
                            Text(size)
                                .font(.footnote)
                                .fontWeight(.heavy)
                                .foregroundColor(colorGray)
                                .frame(width: 28, height: 28, alignment: .center)
                                .background(Color.white.cornerRadius(5))
                                .background(RoundedRectangle(cornerRadius: 5).stroke(colorGray,lineWidth: 1))
                        })
                        
                    }
                })//: hstack
                
            })//: vstack
        })
        
        
        
    }
}

struct RatingsSizesDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RatingsSizesDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
