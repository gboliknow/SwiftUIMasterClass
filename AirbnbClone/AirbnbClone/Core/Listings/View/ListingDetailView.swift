//
//  ListingDetailView.swift
//  AirbnbClone
//
//  Created by Gbolahan on 12/01/2024.
//

import SwiftUI
import MapKit

struct ListingDetailView: View {
    let listing : Listing
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 37.7749, longitude: -122.4194), // Default location (San Francisco)
        span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
    )
    
    @Environment(\.dismiss) private var dismiss
    var body: some View {
        
        ScrollView{
            ZStack(alignment: .topLeading ) {
                
                ListingImageCarouselView(listing: listing)
                    .frame(height: 320)
                Button(action:
                        {
                    dismiss()
                }, label: {
                    Image(systemName: "chevron.left")
                        .foregroundStyle(.black)
                        .background{
                            Circle()
                                .fill(.white)
                                .frame(width: 32, height: 32)
                        }
                        .padding(52)
                })
            
            }
            
            VStack(alignment:.leading, spacing: 8){
                
                Text(listing.title)
                    .font(.title)
                    .fontWeight(.semibold)
                
                VStack(alignment : .leading){
                    HStack(spacing : 2){
                        Image(systemName: "star.fill")
                        Text(String(format: "%.1f", listing.rating))
                        Text("-")
                        Text("28 reviews")
                            .underline()
                            .fontWeight(.semibold)
                    }.foregroundStyle(.black)
                    Text("\(listing.city), \(listing.State)")
                }
                .font(.caption)
                
            }
            .padding(.leading)
            .frame(maxWidth: .infinity, alignment: .leading)
            
            Divider()
            
            //host info view
            HStack{
                VStack(alignment: .leading, spacing: 4){
                    Text("Entire \(listing.type.description) hosted by \(listing.ownerName) ")
                        .font(.headline)
                        .frame(width: 250, alignment: .leading)
                    
                    HStack(spacing :2){
                        Text("\(listing.numberOfGuests) guests - ")
                        Text("\(listing.numberOfBedrooms) bedrooms - ")
                        Text("\(listing.numberOfBeds) beds - ")
                        Text("\(listing.NumberOfBathrooms) baths")
                    }
                    .font(.caption)
                }
                .frame(width: 300, alignment: .leading)
                Spacer()
                Image((listing.ownerImageUrl))
                    .resizable()
                    .scaledToFill()
                    .frame(width: 64, height: 64)
                    .clipShape(Circle())
                
                
            }
            .padding()
            
            Divider()
            
            // listing features
            
            VStack(alignment : .leading , spacing: 16){
                ForEach(listing.features){
                    feature in
                    HStack(spacing : 12){
                        Image(systemName: feature.imageName)
                        
                        VStack(alignment: .leading){
                            Text(feature.title)
                                .font(.footnote)
                                .fontWeight(.semibold)
                            
                            Text(feature.subTitle)
                                .font(.caption)
                                .foregroundStyle(.gray)
                        }
                        Spacer()
                    }
                }
                
                .padding()
            }
            
            Divider()
            //Bedrooms view
            VStack(alignment : .leading , spacing: 16){
                Text("where you'll sleep")
                    .font(.headline)
                    .padding()
                
                ScrollView(.horizontal, showsIndicators: false){
                    HStack(spacing : 16){
                        ForEach(1 ... listing.numberOfBedrooms, id: \.self){
                            bedroom in
                            VStack{
                                Image(systemName: "bed.double")
                                Text("Bedroom \(bedroom)")
                            }
                            .frame(width: 132 , height: 100)
                            .overlay{
                                RoundedRectangle(cornerRadius: 12)
                                    .stroke()
                                    .foregroundStyle(.gray)
                            }
                        }
                    }
                    
                }
                
                
            }
            
            Divider()
            
            VStack(){
                
                VStack(alignment: .leading, spacing : 16){
                    Text("What this place offers")
                        .font(.headline)
                    ForEach(listing.amenities){
                        amenity in
                        HStack{
                            Image(systemName: amenity.imageName)
                                .frame(width: 32)
                            
                            Text(amenity.title)
                                .font(.footnote)
                            
                            Spacer()
                            
                        }
                    }
                }.padding()
                
                Divider()
                VStack(alignment: .leading, spacing : 16){
                    Text("Where you'll be")
                        .font(.headline)
                        .padding()
                    
                    
                    Map(coordinateRegion: $region)
                        .onAppear {
                            // Additional setup or data loading when the view appears
                        }
                        .frame(height: 200)
                        .clipShape(RoundedRectangle(cornerRadius: 12))
                        .padding()
                    
                    
                    
                }
                
            }
            
        }
        .toolbar(.hidden, for: .tabBar)
        .ignoresSafeArea()
        .padding(.bottom, 72)
        .overlay(alignment : .bottom){
            VStack{
                Divider().padding(.bottom)
                HStack{
                    VStack(alignment:.leading){
                        Text("$\(listing.price)")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                        
                        Text("Total before taxes")
                            .font(.footnote)
                        
                        Text("Oct 15 - 20")
                            .font(.footnote)
                            .fontWeight(.semibold)
                            .underline()
                    }
                    Spacer()
                    Button(action: {
                        dismiss()
                    }, label: {
                        Text("Reserve")
                            .foregroundStyle(.white)
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .frame(width: 140, height: 40)
                            .background(.pink)
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                        
                    })
                }
                .padding(.horizontal, 32)
            }
            .background(.white)
            
        }
    }
}


struct ListingDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ListingDetailView(listing: DeveloperPreview.shared.listings[0])
    }
}
