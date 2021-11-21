//
//  AssociateType.swift
//  FastLane_Integration
//
//  Created by Manjit on 21/11/2021.
//

import Foundation

protocol AssociateTypeCheck {
    associatedtype Item
    var totalCount: Int { get set}
    mutating func addNewItem(newItem: Item)
    subscript(position: Int)-> Item {get}
}

struct StringList{
    
}
