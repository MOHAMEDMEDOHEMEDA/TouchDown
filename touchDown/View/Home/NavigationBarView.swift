//
//  NavigationBar.swift
//  touchDown
//
//  Created by Mohamed Magdy on 10/09/2023.
//

import SwiftUI

struct NavigationBarView: View {
    
    // MARK: - PROPERTIES
    
    @State private var isAnimated : Bool = false
    
    // MARK: - BODY
    var body: some View {
        HStack{
            Button(action: {}, label: {
                Image(systemName: "magnifyingglass")
                    .foregroundColor(.black)
                    .font(.title)
                
            })
            
            Spacer()
            
            LogoView()
                .opacity(isAnimated ? 1 : 0)
                .offset(x:0 ,y:isAnimated ? 0 : -25)
                .onAppear(perform: {
                    withAnimation (.easeOut(duration: 0.5)){
                        isAnimated.toggle()
                    }
                })
            
            Spacer()
            
            
            
            ZStack {
                Button(action: {}, label: {
                    Image(systemName: "cart")
                        .foregroundColor(.black)
                        .font(.title)
                    
                })
                
                Circle()
                    .fill(.red)
                    .frame(width: 14,height: 14,alignment: .center)
                    .offset(x: 13,y: -10)
            }
            
        }//: HSTACK
    }
}

// MARK: - PREVIEW
struct NavigationBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarView()
            .previewLayout(.sizeThatFits)
            .padding()
        
    }
}
