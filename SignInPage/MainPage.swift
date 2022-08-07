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
        ZStack {
            //sets background to multicolor
            ZStack {}
                .frame( maxWidth: .infinity, maxHeight: .infinity)
                .background(Image("rainbow").resizable())
                .ignoresSafeArea()
            
            VStack {
                    Text("Book an Appointment Now!")
                        .multilineTextAlignment(.center)
                        .font(.custom("Audrey-Medium", size: 32))
                    
                    Text("It only takes a few minutes")
                        .font(.custom("Audrey-Normal", size: 23))
                        .padding()
                   
                    //button navigates to listed businesses
                    NavigationLink(destination: BusinessListingPage().navigationBarBackButtonHidden(true), isActive: $makeAppoint){}
                    
                    Button(action: {
                        makeAppoint = true
                    }, label: {
                        Text("Book Appointment")
                            .font(.custom("Audrey-MediumOblique", size: 20))
                            .padding(20)
                    })
                }
                .navigationTitle("")
            .navigationBarHidden(true)
        }
    }
}

struct MainPage_Previews: PreviewProvider {
    static var previews: some View {
        MainPage()
    }
}
