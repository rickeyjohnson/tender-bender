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
    static let sampleRestaurant = Restaurant(name: "Raising Canes",
                                              location: "123 Pennsylvania Ave, New York, NY 10012",
                                              rating: 4.5,
                                              description: "lorem ipsum dolor sit amet consectetur adipisicing elit. Quo, voluptatem! Quasi, voluptas!",
                                              opening: "11:00AM",
                                              closing: "11:00PM",
                                              imageURL: "")
    static let anotherSampleRestaurant = Restaurant(name: "Zaxby's",
                                                    location: "1601 E Market St, Greensboro, NC 27411",
                                                    rating: 4.6,
                                                    description: "lorem ipsum dolor sit amet consectetur adipisicing elit. Quo, voluptatem! Quasi, voluptas!",
                                                    opening: "6:00AM",
                                                    closing: "9:00PM",
                                                    imageURL: "")
    static let restaurants = [sampleRestaurant, sampleRestaurant, anotherSampleRestaurant, sampleRestaurant, anotherSampleRestaurant, anotherSampleRestaurant, anotherSampleRestaurant]
}
