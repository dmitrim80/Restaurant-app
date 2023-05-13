//
//  MenuItem.swift
//  menu
//
//  Created by Dmitri Morozov on 5/10/23.
//

import Foundation

struct MenuItem: Identifiable {
    var id: UUID = UUID()
    var name:String
    var price:String
    var imageName:String
}
