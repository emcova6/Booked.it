//
//  RegistrationPage.swift
//  SignInPage
//
//  Created by Everyone Can Code on 7/26/22.
//

import SwiftUI

struct RegistrationPage: View {
    @State var firstName: String = ""
    @State var lastName: String = ""
    @State var password: String = ""
    @State var email: String = ""
    @State var makeAccount: Bool = false
    var body: some View {
        //NavigationView {
            VStack{
                Text("Create an account")
                    .font(.title)
                
                Text("It'll only take a minute!")
                    .padding()
                
                SecureField ("First name", text: $firstName)
                    .textFieldStyle(.roundedBorder)
                    .frame(width: 150)
                    .padding()
                
                SecureField ("Last name", text: $lastName)
                    .textFieldStyle(.roundedBorder)
                    .frame(width: 150)
                    .padding()
                
                SecureField ("Email", text: $email)
                    .textFieldStyle(.roundedBorder)
                    .frame(width: 150)
                    .padding()
                
                SecureField("Password", text: $password)
                    .textFieldStyle(.roundedBorder)
                    .frame(width: 150)
                    .padding()
                
                NavigationLink(destination: MainPage().navigationBarBackButtonHidden(true), isActive: $makeAccount){}
                
                Button(action: {
                    makeAccount = true
                    //this button takes user to main page
                }, label: {
                    Text("Register account")
                        .padding(30)
                })
            }
            .navigationTitle("")
            .navigationBarHidden(true)
       // }
    }
}

struct RegistrationPage_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationPage()
    }
}
