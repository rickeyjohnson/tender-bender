//
//  RestaurantDetailView.swift
//  TenderBender
//
//  Created by Rickey Johnson on 5/22/25.
//

import SwiftUI

struct RestaurantDetailView: View {
    let restaurant: Restaurant
    
    var body: some View {
        VStack {
            Image("tenderImageFake")
                .resizable()
        }
    }
}

#Preview {
    RestaurantDetailView(restaurant: MockData.sampleRestaurant)
}
