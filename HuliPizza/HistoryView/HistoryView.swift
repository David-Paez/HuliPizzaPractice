//
//  PizzaHistoryView.swift
//  HuliPizza
//
//  Created by David Paez on 8/19/20.
//  Copyright © 2020 David Paez. All rights reserved.
//

import SwiftUI

struct HistoryView: View {
    @State var imageID: Int = 0
    var body: some View {
        VStack {
            //ContentHeaderView()
            PageTitleView(title: "Pizza History")
            SelectedImageView(image: "\(imageID)_250w")
                .padding(5)
            HistoryListView(imageID: $imageID)
        }
    }
}

struct PizzaHistoryView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            HistoryView()
            HistoryView()
                .colorScheme(.dark)
                .background(Color.black)
        }
    }
}
