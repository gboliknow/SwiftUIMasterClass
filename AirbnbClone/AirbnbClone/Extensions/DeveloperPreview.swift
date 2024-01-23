//
//  DeveloperPreview.swift
//  AirbnbClone
//
//  Created by Gbolahan on 23/01/2024.
//

import Foundation

class DeveloperPreview{
    static var shared = DeveloperPreview()
    var listings : [Listing] = [
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            ownerName: "Bola Akindele",
            ownerImageUrl: "woman",
            numberOfBedrooms: 3,
            NumberOfBathrooms: 2,
            numberOfGuests: 4,
            numberOfBeds: 3,
            latitude: 6.5244,
            price: 320,
            longitude: 3.3792,
            imageURLs: [
                "pexel-2",
                "pexel-3",
                "pexel-4",
                "pexel-1",
            ],
            address: "Lagos, Nigeria",
            city: "Lagos",
            State: "Lagos",
            title: "Lagos Downtown Apartment",
            rating: 4.9,
            features: [.superHost, .selfCheckIn],
            amenities: [.wifi, .balcony, .kitchen],
            type: .apartment
        ),
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            ownerName: "Tunde Ogunleye",
            ownerImageUrl: "woman",
            numberOfBedrooms: 4,
            NumberOfBathrooms: 3,
            numberOfGuests: 6,
            numberOfBeds: 4,
            latitude: 7.3776,
            price: 380,
            longitude: 3.9470,
            imageURLs: [
                "pexel-3",
                "pexel-4",
                "pexel-1",
                "pexel-2",
            ],
            address: "Ibadan, Nigeria",
            city: "Ibadan",
            State: "Oyo",
            title: "Ibadan Central Villa",
            rating: 4.6,
            features: [.selfCheckIn],
            amenities: [.wifi, .balcony, .pool],
            type: .villa
        ),
        .init(
            id: NSUUID().uuidString, ownerUid: NSUUID().uuidString, ownerName: "Gbolahan Adekoye", ownerImageUrl: "woman", numberOfBedrooms: 4, NumberOfBathrooms: 4, numberOfGuests: 3, numberOfBeds: 4, latitude: 34.5632, price: 765, longitude: -67.9543, imageURLs:  [
                "pexel-3",
                "pexel-4",
                "pexel-3",
                "pexel-1",
            ], address: "Abuja, Nigeria", city: "Abuja", State: "Abuja", title: "Abuja villa", rating: 4.0, features: [.superHost , .selfCheckIn], amenities: [.wifi,.alarmSystem,.laundry], type: .villa
        ),
        .init(
            id: NSUUID().uuidString, ownerUid: NSUUID().uuidString, ownerName: "Jane Doe", ownerImageUrl: "woman", numberOfBedrooms: 3, NumberOfBathrooms: 2, numberOfGuests: 5, numberOfBeds: 3, latitude: 6.5244, price: 320, longitude: 7.4898, imageURLs: [
                "pexel-2",
                "pexel-3",
                "pexel-4",
                "pexel-1",
            ],
            address: "Port Harcourt, Nigeria", city: "Port Harcourt", State: "Rivers", title: "Riverside Cottage", rating: 4.8, features: [.superHost, .selfCheckIn], amenities: [.wifi, .alarmSystem, .kitchen], type: .townHouse
        ),
        .init(
            id: NSUUID().uuidString, ownerUid: NSUUID().uuidString, ownerName: "John Smith", ownerImageUrl: "woman", numberOfBedrooms: 2, NumberOfBathrooms: 1, numberOfGuests: 2, numberOfBeds: 2, latitude: 10.2921, price: 150, longitude: 9.7835, imageURLs: [
                "pexel-4",
                "pexel-2",
                "pexel-1",
                "pexel-3",
            ],
            address: "Kano, Nigeria", city: "Kano", State: "Kano", title: "Kano Retreat", rating: 4.2, features: [.selfCheckIn], amenities: [.wifi, .alarmSystem, .pool], type: .apartment
        ),
        .init(
            id: NSUUID().uuidString, ownerUid: NSUUID().uuidString, ownerName: "Grace Johnson", ownerImageUrl: "woman", numberOfBedrooms: 5, NumberOfBathrooms: 3, numberOfGuests: 7, numberOfBeds: 5, latitude: 7.3775, price: 450, longitude: 3.9470, imageURLs: [
                "pexel-3",
                "pexel-4",
                "pexel-2",
                "pexel-1",
            ],
            address: "Enugu, Nigeria", city: "Enugu", State: "Enugu", title: "Enugu Retreat", rating: 4.6, features: [.superHost, .selfCheckIn], amenities: [.wifi, .kitchen, .pool], type: .apartment
        ),
        // Listing 4
        .init(
            id: NSUUID().uuidString, ownerUid: NSUUID().uuidString, ownerName: "Michael Okafor", ownerImageUrl: "woman", numberOfBedrooms: 6, NumberOfBathrooms: 4, numberOfGuests: 8, numberOfBeds: 6, latitude: 11.3235, price: 580, longitude: 6.4916, imageURLs: [
                "pexel-1",
                "pexel-2",
                "pexel-3",
                "pexel-4",
            ],
            address: "Kaduna, Nigeria", city: "Kaduna", State: "Kaduna", title: "Kaduna Mansion", rating: 4.3, features: [.superHost, .selfCheckIn], amenities: [.wifi, .alarmSystem, .laundry], type: .house
        ),
        // Listing 5
        .init(
            id: NSUUID().uuidString, ownerUid: NSUUID().uuidString, ownerName: "Blessing Eke", ownerImageUrl: "woman", numberOfBedrooms: 3, NumberOfBathrooms: 2, numberOfGuests: 4, numberOfBeds: 3, latitude: 9.0579, price: 280, longitude: 7.4951, imageURLs: [
                "pexel-4",
                "pexel-1",
                "pexel-2",
                "pexel-3",
            ],
            address: "Abeokuta, Nigeria", city: "Abeokuta", State: "Ogun", title: "Abeokuta Hideaway", rating: 4.9, features: [.superHost, .selfCheckIn], amenities: [.wifi, .laundry, .kitchen], type: .apartment
        ),
        // Listing 6
        .init(
            id: NSUUID().uuidString, ownerUid: NSUUID().uuidString, ownerName: "David Okoye", ownerImageUrl: "woman", numberOfBedrooms: 4, NumberOfBathrooms: 3, numberOfGuests: 6, numberOfBeds: 4, latitude: 12.0499, price: 380, longitude: 8.5156, imageURLs: [
                "pexel-3",
                "pexel-4",
                "pexel-1",
                "pexel-2",
            ],
            address: "Calabar, Nigeria", city: "Calabar", State: "Cross River", title: "Calabar Oasis", rating: 4.7, features: [.selfCheckIn], amenities: [.wifi, .office, .pool], type: .apartment
        ),
        // Listing 7
        .init(
            id: NSUUID().uuidString, ownerUid: NSUUID().uuidString, ownerName: "Chika Nwosu", ownerImageUrl: "woman", numberOfBedrooms: 2, NumberOfBathrooms: 1, numberOfGuests: 2, numberOfBeds: 2, latitude: 7.3776, price: 150, longitude: 4.0333, imageURLs: [
                "pexel-2",
                "pexel-3",
                "pexel-4",
                "pexel-1",
            ],
            address: "Asaba, Nigeria", city: "Asaba", State: "Delta", title: "Asaba Getaway", rating: 4.2, features: [.selfCheckIn], amenities: [.wifi, .alarmSystem, .kitchen], type: .apartment
        ),
        // Listing 8
        .init(
            id: NSUUID().uuidString, ownerUid: NSUUID().uuidString, ownerName: "Daniel Afolabi", ownerImageUrl: "woman", numberOfBedrooms: 5, NumberOfBathrooms: 4, numberOfGuests: 8, numberOfBeds: 5, latitude: 6.4483, price: 480, longitude: 7.5103, imageURLs: [
                "pexel-1",
                "pexel-2",
                "pexel-3",
                "pexel-4",
            ],
            address: "Akure, Nigeria", city: "Akure", State: "Ondo", title: "Akure Mansion", rating: 4.4, features: [.superHost, .selfCheckIn], amenities: [.wifi, .alarmSystem, .laundry], type: .house
        ),
        // Listing 9
        .init(
            id: NSUUID().uuidString, ownerUid: NSUUID().uuidString, ownerName: "Ebere Agu", ownerImageUrl: "woman", numberOfBedrooms: 3, NumberOfBathrooms: 2, numberOfGuests: 5, numberOfBeds: 3, latitude: 10.5134, price: 320, longitude: 7.4408, imageURLs: [
                "pexel-4",
                "pexel-1",
                "pexel-2",
                "pexel-3",
            ],
            address: "Owerri, Nigeria", city: "Owerri", State: "Imo", title: "Owerri Retreat", rating: 4.5, features: [.superHost, .selfCheckIn], amenities: [.wifi, .kitchen, .pool], type: .apartment
        ),
        // Listing 10
        .init(
            id: NSUUID().uuidString, ownerUid: NSUUID().uuidString, ownerName: "Femi Ojo", ownerImageUrl: "woman", numberOfBedrooms: 4, NumberOfBathrooms: 3, numberOfGuests: 6, numberOfBeds: 4, latitude: 8.5241, price: 380, longitude: 4.5433, imageURLs: [
                "pexel-3",
                "pexel-4",
                "pexel-1",
                "pexel-2",
            ],
            address: "Warri, Nigeria", city: "Warri", State: "Delta", title: "Warri Oasis", rating: 4.7, features: [.selfCheckIn], amenities: [.wifi, .alarmSystem, .pool], type: .apartment
        )
        
        
        
    ]
    
}
