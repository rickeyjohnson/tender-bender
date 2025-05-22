//
//  RestaurantViewModel.swift
//  TenderBender
//
//  Created by Rickey Johnson on 5/18/25.
//

import Foundation

class RestaurantViewModel {
    @Published var resturant: Restaurant
    
    init(resturant: Restaurant) {
        self.resturant = resturant
    }
    
    
}
