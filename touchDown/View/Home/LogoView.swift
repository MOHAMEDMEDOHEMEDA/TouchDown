//
//  LogoView.swift
//  touchDown
//
//  Created by Mohamed Magdy on 10/09/2023.
//

import SwiftUI

struct LogoView: View {
    var body: some View {
        HStack (spacing: 4){
            Text("touch".uppercased())
                .foregroundColor(.black)
                .fontWeight(.black)
                .font(.title3)
            
            Image("logo-dark")
                .resizable()
                .scaledToFit()
                .frame(width: 30,height: 30,alignment: .center)
                
            
            Text("down".uppercased())
                .foregroundColor(.black)
                .fontWeight(.black)
                .font(.title3)
                
        }//: HSTACK
        
    }
}

struct LogoView_Previews: PreviewProvider {
    static var previews: some View {
        LogoView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
