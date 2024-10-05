//
//  collectionHelpers.swift
//  Yumum
//
//  Created by Ahmad Ellashy on 22/09/2024.
//

import Foundation


enum CollectionHelpers{
    case topSection
    case bannersSection
    case categoriesSection(_ categories: [String])
    case productsSection(_ products: [String])
    
    func section(_ index: Int) -> CollectionHelpers{
        switch index{
        case 0 : return .topSection
        case 1 : return .bannersSection
        case 2 : return .categoriesSection(["String"])
        case 3 : return .productsSection(["Num"])
        default :
            return .topSection
        }
    }
}
