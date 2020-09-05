//
//  HistoryListView.swift
//  HuliPizza
//
//  Created by David Paez on 8/19/20.
//  Copyright © 2020 David Paez. All rights reserved.
//

import SwiftUI

struct HistoryListView: View {
    var historyModel = HistoryModel()
    @Binding var imageID: Int
    
    var body: some View {
        VStack{
            NavigationView{
                List (historyModel.historyItems){ item in
                    NavigationLink(destination: HistoryDetailView(historyItem: item, imageID: self.$imageID)) {
                        HistoryRowView(historyItem: item)
                            .listRowInsets(EdgeInsets())
                    }
                }
            }
        }
    }
}

struct HistoryListView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryListView(imageID: .constant(0))
    }
}
