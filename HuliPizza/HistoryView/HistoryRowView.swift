//
//  HistoryRowView.swift
//  HuliPizza
//
//  Created by David Paez on 8/19/20.
//  Copyright © 2020 David Paez. All rights reserved.
//

import SwiftUI

struct HistoryRowView: View {
    var historyItem: HistoryItem
    var body: some View {
        HStack(alignment:.top){
            Image("\(historyItem.id)_100w")
                .clipShape(Circle())
                .shadow(color: Color.black.opacity(0.5), radius: 10, x:5, y:5)
            Text("\(historyItem.name)")
            Spacer()
        }
        .overlay(
            Image(systemName:"chevron.right.square")
                .font(.title)
                .padding()
                .foregroundColor(Color("G3"))
            ,alignment: .trailing
        )
    }
}

struct HistoryRowView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryRowView(historyItem: HistoryModel().historyItems[2])
    }
}
