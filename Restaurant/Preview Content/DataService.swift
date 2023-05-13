//
//  DataService.swift
//  menu
//
//  Created by Dmitri Morozov on 5/11/23.
//

import Foundation

struct DataService {
    
    func getData() -> [MenuItem]{
        return [MenuItem(name: "Onigiri", price: "1.99", imageName: "onigiri"),
                MenuItem(name: "Meguro Sushi", price: "5.99", imageName: "meguro-sushi"),
                MenuItem(name: "Tako Sushi", price: "4.99", imageName: "tako-sushi"),
                MenuItem(name: "Avocado Maki", price: "1.24", imageName: "avocado-maki"),
                MenuItem(name: "Tobiko Spicy Maki", price: "1.99", imageName: "tobiko-spicy-maki"),
                MenuItem(name: "Salmon Sushi", price: "4.99", imageName: "salmon-sushi"),
                MenuItem(name: "Hamachi Sushi", price: "6.99", imageName: "hamachi-sushi"),
                MenuItem(name: "Kani Sushi", price: "2.99", imageName: "kani-sushi"),
                MenuItem(name: "Tamago Sushi", price: "2.99", imageName: "tamago-sushi"),
                MenuItem(name: "California Roll", price: "3.99", imageName: "california-roll"),
                MenuItem(name: "Shrimp Sushi", price: "2.99", imageName: "shrimp-sushi"),
                MenuItem(name: "Ikura Sushi", price: "6.99", imageName: "ikura-sushi")]
    }
    
    func getPhotos() -> [String] {
        return ["image0","image1","image2","image3","image4","image5","image6","image7","image8","image9","image10","image11",]
    }
}
