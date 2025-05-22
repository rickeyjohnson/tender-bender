//
//  RestaurantListView.swift
//  TenderBender
//
//  Created by Rickey Johnson on 5/22/25.
//

import SwiftUI

struct RestaurantListView: View {
    @StateObject var viewModel = RestaurantListViewModel()
    
    var body: some View {
        NavigationStack {
            List(viewModel.restaurants) { restaurant in
                RestaurantListCell(restaurant: restaurant)
            }
            .navigationTitle("Search")
        }
        .onAppear {
            viewModel.fetchRestaurants()
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
    RestaurantListView()
}
