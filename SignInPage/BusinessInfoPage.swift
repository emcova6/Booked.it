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
        ZStack {
            Color.alizarin //may change color
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image(businessListing.image)
                    .resizable()
                    .frame(width: 300, height: 300)
                    .clipShape(RoundedRectangle(cornerRadius: 30))
                
                Text(businessListing.name)
                    .font(.title)
                    .bold()
                    .padding()
                
                Text(businessListing.description)
                    .frame(width: 350)
                
                NavigationLink(destination: SchedulingPage().navigationBarBackButtonHidden(false), isActive: $bookAppoint){}
                
                Button(action: {
                    bookAppoint = true
                }, label: {
                    Text("Book Appointment")
                        .font(.custom("Audrey-MediumOblique", size: 20))
                        .padding(30)
                })
            }
        }
    }
}

struct BusinessInfoPage_Previews: PreviewProvider {
    static var previews: some View {
        BusinessInfoPage()
    }
}

