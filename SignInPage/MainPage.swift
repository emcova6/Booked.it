//
//  MainPage.swift
//  SignInPage
//
//  Created by Everyone Can Code on 7/26/22.
//

import SwiftUI

struct MainPage: View {
    @State var makeAppoint: Bool = false
    var body: some View {
            VStack{
                Text("Book an Appointment Now!")
                    .font(.custom("Audrey-Normal", size: 32))
                
                Text("It only takes a few minutes.")
                    .font(.custom("Audrey-Normal", size: 22))
                    .padding()
                
                NavigationLink(destination: BusinessListingPage().navigationBarBackButtonHidden(true), isActive: $makeAppoint){}
                
                Button(action: {
                    makeAppoint = true
                }, label: {
                    Text("Book Appointment")
                        .font(.custom("Audrey-Normal", size: 20))
                        .padding(30)
                })
            }
            .navigationTitle("")
            .navigationBarHidden(true)
    }
}

struct MainPage_Previews: PreviewProvider {
    static var previews: some View {
        MainPage()
    }
}
