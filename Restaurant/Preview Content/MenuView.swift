//
//  MenuView.swift
//  Restaurant
//
//  Created by Dmitri Morozov on 5/13/23.
//

import SwiftUI

struct MenuView: View {
    
    @State var menuItems:[MenuItem] = [MenuItem]()
    var dataService = DataService()
    var body: some View {
        
        List(menuItems) { item in
                MenuListRow(item: item)
                
            }.listStyle(.plain)
                .onAppear{
                    menuItems = dataService.getData()
                }
        }
    
}
struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
