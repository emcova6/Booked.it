//
//  SchedulingPage2.swift
//  SignInPage
//
//  Created by Everyone Can Code on 8/2/22.
//

import SwiftUI

struct SchedulingPage2: View {
    @State var name: String = ""
    @State var email: String = ""
    @State var phone: String = ""
    var body: some View {
        VStack {
            Text("Contact Information")
                .font(.title)
                .multilineTextAlignment(.center)
                .padding()
            
            SecureField("Name", text: $name)
                .textFieldStyle(.roundedBorder)
                .frame(width: 150)
                .padding()
            
            SecureField("Email", text: $email)
                .textFieldStyle(.roundedBorder)
                .frame(width: 150)
                .padding()
            
            SecureField("Phone", text: $phone)
                .textFieldStyle(.roundedBorder)
                .frame(width: 150)
                .padding()
            
            Text("Have you had any contact with someone with Covid-19 within the past 14 days?")
                .padding()
        }
    }
}

struct SchedulingPage2_Previews: PreviewProvider {
    static var previews: some View {
        SchedulingPage2()
    }
}
