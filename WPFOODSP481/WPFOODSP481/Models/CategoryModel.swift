//
//  CategoryModel.swift
//  WPFOODSP481
//
//  Created by Rana Faheem on 3/2/24.
//

import Foundation


class CategoryModel{
    
    var name : String = ""
    var image : String = ""
    var items : [ItemModel] = [ItemModel]()
    
    init(){
        self.name = ""
        self.image = ""
        self.items = [ItemModel()]
    }
    
    convenience init(name: String, image: String, items: [ItemModel] = [ItemModel]()) {
        self.init()
        self.name = name
        self.image = image
        self.items = items
    }
}
