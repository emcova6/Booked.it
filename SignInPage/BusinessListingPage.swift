//
//  BusinessListingPage.swift
//  SignInPage
//
//  Created by Everyone Can Code on 8/1/22.
//

import SwiftUI

struct BusinessListingPage: View {
    var body: some View {
        NavigationView {
            VStack {
                List(businessListings) { businessListing in
                    HStack {
                        Image(businessListing.image)
                            .resizable()
                            .frame(width: 75, height: 100)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                        VStack(alignment: .leading) {
                            Text("\(businessListing.name)")
                                .font(.system(size: 20, weight: .bold))
                        Text("\(businessListing.description)")
                        }
                    }
                    .frame(height: 125)
                    .listRowSeparator(.hidden)
                    
                    .navigationBarTitle("Listings")
                    .overlay(NavigationLink("", destination: BusinessInfoPage(businessListing: businessListing))
                        .font(.system(size: 26, weight: .bold)).opacity(0))
                    }
                }
            }
        }
    }
        

struct BusinessListingPage_Previews: PreviewProvider {
    static var previews: some View {
        BusinessListingPage()
    }
}

struct ListBusiness: Identifiable {
    var id = UUID()
    var name: String
    var description: String
    var image: String
}

var businessListings = [
ListBusiness(name: "Betty's Beauty Salon & Hair Design", description: "", image: "Betty's Beauty Salon"),
ListBusiness(name: "Lady's Nail Bar", description: "", image: "Lady's Nail Bar"),
ListBusiness(name: "You & Me Nails Salon", description: "", image: "You and Me Nails Salon"),
ListBusiness(name: "i do nail shop", description: "", image: "i do nails shop"),
ListBusiness(name: "Gente Bella Beauty Salon Inc.", description: "", image: "GBBS"),
]
