//
//  Constant.swift
//  touchDown
//
//  Created by Mohamed Magdy on 10/09/2023.
//

import SwiftUI


// color
let colorBackground :Color = Color("ColorBackground")
let colorGray : Color = Color(uiColor: .systemGray4)



//image
//api
//ux

let feedBack = UIImpactFeedbackGenerator(style: .medium)
//data
let players: [player] = Bundle.main.decode("player.json")
let categories: [Category] = Bundle.main.decode("category.json")
let products:[Product] = Bundle.main.decode("product.json")

let brands:[Brand] = Bundle.main.decode("brand.json")

let sampleProduct : Product = products[0]
//layout

let columnSpacing:CGFloat = 10
let rowSpacing:CGFloat = 10
var gridLayout: [GridItem]{
    return Array(repeating: GridItem(.flexible(),spacing: rowSpacing), count: 2)
}
//string
//font
//misc
