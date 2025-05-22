//
//  Restaurant.swift
//  TenderBender
//
//  Created by Rickey Johnson on 5/22/25.
//

import Foundation

struct Restaurant: Codable, Identifiable {
    var id = UUID()
    let name: String
    let location: String
    let rating: Double
    let description: String
    let opening: String
    let closing: String
    let imageURL: String
    var isFavorite: Bool = false
}

struct RestaurantResponse {
    let request: [Restaurant]
}

struct MockData {
    static let sampleRestaurants = Restaurant(name: "Raising Canes",
                                              location: "123 Pennsylvania Ave, New York, NY 10012",
                                              rating: 4.5,
                                              description: "lorem ipsum dolor sit amet consectetur adipisicing elit. Quo, voluptatem! Quasi, voluptas!",
                                              opening: "11:00AM",
                                              closing: "11:00PM",
                                              imageURL: "")
    static let restaurants = [sampleRestaurants, sampleRestaurants, sampleRestaurants, sampleRestaurants, sampleRestaurants]
}
