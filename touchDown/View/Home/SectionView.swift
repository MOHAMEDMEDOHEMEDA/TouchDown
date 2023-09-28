//
//  SectionView.swift
//  touchDown
//
//  Created by Mohamed Magdy on 15/09/2023.
//

import SwiftUI

struct SectionView: View {
    
    // MARK: - properties
    
    @State var rotateClockWise : Bool
    
    // MARK: - body
    
    
    var body: some View {
        VStack (spacing: 0){
            Spacer()
            
            Text("Categories")
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .rotationEffect(Angle(degrees: rotateClockWise ? 90 : -90))
            
            Spacer()
        }//: vstack
        .background(Color.gray.cornerRadius(12))
        .frame(width: 85)
        
    
    }
}

// MARK: - preview

struct SectionView_Previews: PreviewProvider {
    static var previews: some View {
        SectionView(rotateClockWise: false)
            .previewLayout(.fixed(width: 120, height: 240))
            .padding()
            .background(colorBackground)
    }
}
