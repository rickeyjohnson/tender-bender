//
//  SearchView.swift
//  TenderBender
//
//  Created by Rickey Johnson on 5/17/25.
//

import SwiftUI

struct SearchView: View {
    var body: some View {
        RestaurantListView()
    }
}

struct RestaurantListView: View {
    var body: some View {
        NavigationStack {
            List(MockData.restaurants) { restaurant in
                RestaurantListCell(restaurant: restaurant)
            }
            .navigationTitle("Search")
        }
    }
}

struct RestaurantListCell: View {
    var restaurant: Restaurant
    var image: String = "tenderImageFake"
    
    var body: some View {
        HStack {
            Image(image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 120, height: 100)
                .padding(.trailing)
            
            VStack(alignment: .leading) {
                Text(restaurant.name)
                    .font(.title2)
                    .fontWeight(.medium)
                Text(restaurant.location)
                    .font(.subheadline)
                    .fontWeight(.medium)
                    .foregroundStyle(.secondary)
                Text("Open until \(restaurant.closing)")
                    .font(.subheadline)
                    .foregroundStyle(.green)
            }
        }
    }
}

#Preview {
    SearchView()
}
