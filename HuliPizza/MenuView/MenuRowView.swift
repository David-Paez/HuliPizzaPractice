//
//  MenuRowView.swift
//  HuliPizza
//
//  Created by David Paez on 8/18/20.
//  Copyright © 2020 David Paez. All rights reserved.
//

import SwiftUI


struct MenuRowView: View {
    var menuItem: MenuItem = testMenuItem
    var body: some View {
        VStack(alignment: .leading) {
            HStack(alignment:.top, spacing:15){
                Image("\(menuItem.id)_100w")
    //                .cornerRadius(10)
    //                .border(Color("G4"), width: 2)
                    .clipShape(Capsule())
                    .shadow(color: Color.black.opacity(0.5), radius: 5, x: 5, y: 5)
                VStack(alignment:.leading) {
                    Text(menuItem.name)
                        .font(.title)
                        .fontWeight(.light)
                    
                    RatingsView(count: menuItem.rating)
                }
            }
            Text(menuItem.description)
        }
    }
}

struct MenuRowView_Previews: PreviewProvider {
    static var previews: some View {
        MenuRowView(menuItem:MenuModel().menu[7])
    }
}