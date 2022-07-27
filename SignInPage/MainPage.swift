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
        NavigationView {
            VStack{
                Text("Book an Appointment Now!")
                    .font(.title)
                
                Text("It only takes a few minutes.")
                    .padding()
                
                NavigationLink(destination: Text("this is where you'd make the appointment").navigationBarBackButtonHidden(true), isActive: $makeAppoint){}
                
                Button(action: {
                    makeAppoint = true
                    //this button takes user to main page
                }, label: {
                    Text("Book Appointment")
                        .padding(30)
                })
            }
        }
    }
}

struct MainPage_Previews: PreviewProvider {
    static var previews: some View {
        MainPage()
    }
}
