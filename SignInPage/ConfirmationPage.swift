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
            VStack {
                Text("Confirmation")
                    .font(.custom("Audrey-Normal", size: 32))
                    .padding()
                
                Text("Your appointment has been booked for \(date.formatted(date: .complete, time: .shortened))")
                    .font(.custom("Audrey-Normal", size: 22))
                    .padding(30)
                
                Text("Thank you for booking your appointment with us!")
                    .multilineTextAlignment(.center)
                    .font(.custom("Audrey-Normal", size: 22))
                    .padding(20)
                
                NavigationLink(destination: MainPage().navigationBarBackButtonHidden(true), isActive: $mainPage){}
                
                Button(action: {
                    mainPage = true
                }, label: {
                    Text("Back to Main Page")
                        .font(.custom("Audrey-Normal", size: 20))
                        .padding(20)
                })

        }
    }
}

struct ConfirmationPage_Previews: PreviewProvider {
    static var previews: some View {
        ConfirmationPage(date: prevDate)
    }
}

var prevDate = Date()
