//
//  BusinessInfoPage.swift
//  SignInPage
//
//  Created by Everyone Can Code on 8/1/22.
//

import SwiftUI

struct BusinessInfoPage: View {
    @State var bookAppoint: Bool = false
    var businessListing: ListBusiness = businessListings[0]
    var body: some View {
        //sets background to gradient
        LinearGradient(gradient: Gradient(colors: [Color.wisteria, Color.alizarin]), startPoint: .top, endPoint: .bottom)
                    .edgesIgnoringSafeArea(.vertical)
                    .overlay(
            VStack {
                //setup of page
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
                
                //button navigates to next page
                NavigationLink(destination: SchedulingPage().navigationBarBackButtonHidden(false), isActive: $bookAppoint){}
                
                Button(action: {
                    bookAppoint = true
                }, label: {
                    Text("Book Appointment")
                        .font(.custom("Audrey-MediumOblique", size: 20))
                        .padding(30)
                })
        })
    }
}

struct BusinessInfoPage_Previews: PreviewProvider {
    static var previews: some View {
        BusinessInfoPage()
    }
}
