//
//  HistoryDetailView.swift
//  HuliPizza
//
//  Created by David Paez on 9/4/20.
//  Copyright © 2020 David Paez. All rights reserved.
//

import SwiftUI

struct HistoryDetailView: View {
    var historyItem: HistoryItem
    @Binding var imageID:Int

     var body: some View {
        imageID = historyItem.id
        return VStack {
            PageTitleView(title: historyItem.name)
            MapView(latitude: historyItem.latitude, longitude: historyItem.longitude, regionRadius: 1000000)
                .frame(height:100)
            Text(historyItem.history)
                .frame(height:300)
        }
    }
}

struct HistoryDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryDetailView(historyItem: HistoryModel().historyItems[2], imageID: .constant(0))
    }
}
