//
//  Shop.swift
//  touchDown
//
//  Created by Mohamed Magdy on 25/09/2023.
//

import Foundation


class Shop: ObservableObject{
    @Published var showingProduct : Bool = false
    @Published var selectedProduct : Product? = nil
}
