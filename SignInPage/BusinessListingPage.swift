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
ListBusiness(name: "Gente Bella Beauty Salon Inc.", description: "Welcome to Gente Bella Beauty Salon Inc., your premier beauty and hair salon where we genuinely care about our clients. We use great products and have good prices for our services. Our customers deserve nothing but the best to always look glamorous. We provide a very welcoming environment for both new and returning customers. Having a friendly environment is what makes coming to our hair salon even more special.", image: "GBBS"),
ListBusiness(name: "Betty's Beauty Salon & Hair Design", description: "Bettys Beauty salón Creemos que el servicio al cliente es lo más importante para realizar nuestra pasión por le trasformación de un cambio para felicidad.", image: "Betty's Beauty Salon"),
ListBusiness(name: "Lady’s Nail Bar", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.", image: "Lady's Nail Bar"),
ListBusiness(name: "You & Me Nails Salon", description: "Consectetur adipiscing elit ut aliquam. Imperdiet massa tincidunt nunc pulvinar sapien et ligula. Neque vitae tempus quam pellentesque nec. Varius duis at consectetur lorem donec massa sapien faucibus et. Sit amet dictum sit amet justo donec enim. Eget felis eget nunc lobortis mattis aliquam faucibus. Adipiscing enim eu turpis egestas pretium. Purus in massa tempor nec feugiat.", image: "You and Me Nails Salon"),
ListBusiness(name: "i do nail shop", description: "Clases de uñas con método avanzado 100% GARANTIZADO y Distribuidores autorizados de Exotic Nails", image: "i do nails shop"),
]
