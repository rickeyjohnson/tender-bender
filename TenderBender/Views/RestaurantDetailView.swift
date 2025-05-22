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
        VStack(spacing: 10) {
            Image("tenderImageFake")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(idealWidth: .infinity, maxWidth: .infinity, maxHeight: 400)
                .padding(.bottom, 15)
            
            VStack(alignment: .center, spacing: 10) {
                Text(restaurant.name)
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                
                Text(restaurant.location)
                    .font(.title3)
                
                HoursView(opening: restaurant.opening, closing: restaurant.closing)
                    .font(.caption)
                    .padding(.bottom)
                
                Text(restaurant.description)
            }
            .padding(.horizontal, 15)
            
            Spacer()
            
        }
        .ignoresSafeArea()
    }
}

struct HoursView: View {
    let opening: String
    let closing: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Mon-Fri:  \(opening) - \(closing)")
            Text("Sat:  \(opening) - \(closing)")
            Text("Sun:  \(opening) - \(closing)")
        }
    }
}

#Preview {
    RestaurantDetailView(restaurant: MockData.sampleRestaurant)
}
