//
//  RestaurantListViewModel.swift
//  TenderBender
//
//  Created by Rickey Johnson on 5/18/25.
//

import SwiftUI

class RestaurantListViewModel: ObservableObject {
    @Published var restaurants: [Restaurant] = []
        
    func fetchRestaurants() {
        restaurants = MockData.restaurants
    }
}
