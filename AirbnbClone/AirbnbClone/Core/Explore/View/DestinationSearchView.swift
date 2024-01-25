//
//  DestinationSearchView.swift
//  AirbnbClone
//
//  Created by Gbolahan on 17/01/2024.
//

import SwiftUI
enum DestinationSearchOptions{
    case location
    case dates
    case guests
}

struct DestinationSearchView: View {
    @ObservedObject var viewModel: ExploreViewModel
    @Binding var show: Bool

  
    @State private var selectedOption : DestinationSearchOptions = .location
    @State private var startDate = Date()
    @State private var endDate = Date()
    @State private var numGuests = 0
    
  
    var body: some View {
        VStack{
            HStack {
                Button(
                    action: {
                        withAnimation(.easeIn){
                            show.toggle()
                            viewModel.uddateListingsForLocation()
                            
                        }
                    }, label: {
                        Image(systemName: "xmark.circle")
                            .imageScale(.large)
                            .foregroundStyle(.black)
                })
                
                Spacer()
                if !viewModel.searchLocation.isEmpty{
                    Button("Clear"){
                        viewModel.searchLocation = ""
                        viewModel.uddateListingsForLocation()
                    }.foregroundStyle(.black)
                        .font(.subheadline)
                        .fontWeight(.semibold)
                    
                }
            
            }.padding()
            
            
            VStack (alignment :.leading){
                if selectedOption == .location{
                    Text("Where to?")
                        .font(.title2)
                        .fontWeight(.semibold)
                    
                    HStack{
                        Image(systemName: "magnifyingglass")
                            .imageScale(.small)
                        
                        TextField("Search Destinations" ,text :$viewModel.searchLocation)
                            .font(.subheadline)
                            .onSubmit {
                                viewModel.uddateListingsForLocation()
                                show.toggle()
                            }
                        
                    }.frame(height : 44)
                        .padding(.horizontal)
                        .overlay{
                            RoundedRectangle(cornerRadius: 8)
                                .stroke()
                                .foregroundStyle(Color(.systemGray))
                        }
                }else{
                    CollapsedView(
                        title: "Where", description: "Add destination"
                    )
                }
               
            }
            .modifier(CollapsibleDestinationViewModifier())
            .frame(height:  selectedOption == .location ? 120 : 64)
            .onTapGesture {
                    withAnimation(.easeInOut){
                        selectedOption = .location
                    }
                   
                }
            
            //date selection view
            VStack(alignment: .leading){
                if selectedOption == .dates{
                    Text("When's your trip?")
                        .font(.title2)
                        .fontWeight(.semibold)
                    VStack{
                        DatePicker("From", selection: $startDate , displayedComponents: .date)
                        Divider()
                        DatePicker("To", selection: $endDate , displayedComponents: .date)
                    }
                    .foregroundStyle(.gray)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    
                    
                }else{
                    CollapsedView(
                        title: "When", description: "Add dates"
                    )
                }
            }
                .modifier(CollapsibleDestinationViewModifier())
                .frame(height:  selectedOption == .dates ? 180 : 64)
              .onTapGesture {
                withAnimation(.easeInOut){
                    selectedOption = .dates
                }
            }
            
            //num guest view
            VStack(alignment: .leading){
                if selectedOption == .guests{
                    Text("Who's coming")
                        .font(.title2)
                        .fontWeight(.semibold)
                    
                    Stepper("\(numGuests) Adults", onIncrement: {
                        numGuests += 1
                    }, onDecrement: {
                        guard numGuests > 0 else {return}
                        numGuests -= 1
                    })
                }else{
                    CollapsedView(
                        title: "Who", description: "Add guests"
                    )
                }
            }
            .modifier(CollapsibleDestinationViewModifier())
            .frame(height:  selectedOption == .guests ? 120 : 64)
            .onTapGesture {
                withAnimation(.easeInOut){
                    selectedOption = .guests
                }
            }
            Spacer()
        }
     
    }
}

struct DestinationSearchView_Previews: PreviewProvider {
    static var previews: some View {
        DestinationSearchView(viewModel: ExploreViewModel(service: ExploreService()), show: .constant(false))
    }
}


struct CollapsibleDestinationViewModifier : ViewModifier{
    func body(content: Content) -> some View {
        content
            .padding()
                .background(.white)
                .clipShape(RoundedRectangle(cornerRadius: 12))
                .padding()
                .shadow(radius: 10)
        
    }
}
struct CollapsedView: View {
    let title : String
    let description: String
    var body: some View {
        VStack{
            HStack{
                Text(title)
                
                    .foregroundStyle(.gray)
                Spacer()
                Text(description)
            }
        }
    }
}
