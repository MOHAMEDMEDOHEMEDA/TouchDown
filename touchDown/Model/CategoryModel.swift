//
//  CategoryModel.swift
//  touchDown
//
//  Created by Mohamed Magdy on 15/09/2023.
//

import Foundation


struct Category : Codable , Identifiable{
    let id : Int
    let name : String
    let image : String
}
