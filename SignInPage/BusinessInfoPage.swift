//
//  BusinessInfoPage.swift
//  SignInPage
//
//  Created by Everyone Can Code on 8/1/22.
//

import SwiftUI

struct BusinessInfoPage: View {
    var businessListing: ListBusiness = businessListings[0]
    @State var bookAppoint: Bool = false
    var body: some View {
        VStack {
            Image(businessListing.image)
                .resizable()
                .frame(width: 300, height: 400)
                .clipShape(RoundedRectangle(cornerRadius: 30))
            
            Text(businessListing.name)
                .font(.title)
                .bold()
            
            Text(businessListing.description)
            Spacer()
                .frame(height: 10)
            
            NavigationLink(destination: BookingPage().navigationBarBackButtonHidden(true), isActive: $bookAppoint){}
            
            Button(action: {
                bookAppoint = true
            }, label: {
                Text("Book Appointment")
                    .padding(30)
            })
        }
    }
}

struct BusinessInfoPage_Previews: PreviewProvider {
    static var previews: some View {
        BusinessInfoPage()
    }
}

