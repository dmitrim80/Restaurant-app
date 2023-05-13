//
//  MenuListRow.swift
//  menu
//
//  Created by Dmitri Morozov on 5/12/23.
//

import SwiftUI

struct MenuListRow: View {
    
    var item:MenuItem
    
    var body: some View {
        HStack{
            Image(item.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 50)
                .cornerRadius(15)
            Text(item.name)
                .bold()
            Spacer()
            Text("$"+item.price)
        }
        .listRowSeparator(.hidden)
        .listRowBackground(Color(.brown).opacity(0.1))
    }
}

struct MenuListRow_Previews: PreviewProvider {
    static var previews: some View {
        MenuListRow(item:MenuItem(name: "Test name", price: "2.99", imageName: "tako-sushi"))
    }
}
