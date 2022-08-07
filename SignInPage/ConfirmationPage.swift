//
//  confirmationPage.swift
//  SignInPage
//
//  Created by Everyone Can Code on 8/4/22.
//

import SwiftUI

struct ConfirmationPage: View {
    @State var mainPage: Bool = false
    var date: Date
    var body: some View {
        //sets background to gradient
        LinearGradient(gradient: Gradient(colors: [Color.turquoise, Color.belizeHole]), startPoint: .top, endPoint: .bottom)
                    .edgesIgnoringSafeArea(.vertical)
                    .overlay(
            VStack {
                //page that tells you date + time you booked your appointment for
                    Text("Confirmation")
                        .font(.custom("Audrey-Medium", size: 32))
                        .padding(20)
                    
                    Text("Your appointment has been booked for \(date.formatted(date: .complete, time: .shortened))")
                        .font(.custom("Audrey-Normal", size: 22))
                        .frame(width: 340)
                        .padding(20)
                    
                    Text("Thank you for booking your appointment with us!")
                        .multilineTextAlignment(.center)
                        .font(.custom("Audrey-Normal", size: 22))
                        .padding(20)
                    
                //button that takes you back to appoinment booking page
                    NavigationLink(destination: MainPage().navigationBarBackButtonHidden(true), isActive: $mainPage){}
                    
                    Button(action: {
                        mainPage = true
                    }, label: {
                        Text("Back to Main Page")
                            .font(.custom("Audrey-Medium", size: 20))
                            .padding(25)
                    })
            })
    }
}

struct ConfirmationPage_Previews: PreviewProvider {
    static var previews: some View {
        ConfirmationPage(date: prevDate)
    }
}

var prevDate = Date()
