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
                                .font(.system(size: 12))
                                .padding(0.2)

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
ListBusiness(name: "Gente Bella Beauty Salon Inc.", description: "Welcome to Gente Bella Beauty Salon Inc., your premier beauty and hair salon where we genuinely care about our clients. We use great products and have good prices for our services. Our customers deserve nothing but the best to always look glamorous. We provide a very welcoming environment for both new and returning customers.", image: "GBBS"),
ListBusiness(name: "Betty's Beauty Salon & Hair Design", description: "Bettys Beauty salón Creemos que el servicio al cliente es lo más importante para realizar nuestra pasión por le trasformación de un cambio para felicidad.", image: "Betty's Beauty Salon"),
ListBusiness(name: "Lady’s Nail Bar", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco.", image: "Lady's Nail Bar"),
ListBusiness(name: "You & Me Nails Salon", description: "Consectetur adipiscing elit ut aliquam. Imperdiet massa tincidunt nunc pulvinar sapien et ligula. Neque vitae tempus quam pellentesque nec. Varius duis at consectetur lorem donec.", image: "You and Me Nails Salon"),
ListBusiness(name: "i do nail shop", description: "Clases de uñas con método avanzado 100% GARANTIZADO y Distribuidores autorizados de Exotic Nails", image: "i do nails shop"),
]
