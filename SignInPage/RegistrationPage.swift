//
//  RegistrationPage.swift
//  SignInPage
//
//  Created by Everyone Can Code on 7/26/22.
//

import SwiftUI

struct RegistrationPage: View {
    @State var username: String = ""
    @State var password: String = ""
    @State var email: String = ""
    @State var makeAccount: Bool = false
    var body: some View {
        NavigationView {
            VStack{
                Text("Create an account.")
                    .font(.title)
                    .padding()
                
                TextField ("Email", text: $email)
                    .textFieldStyle(.roundedBorder)
                    .frame(width: 150)
                    .padding()
                
                TextField ("Username", text: $username)
                    .textFieldStyle(.roundedBorder)
                    .frame(width: 150)
                    .padding()
                
                SecureField("Password", text: $password)
                    .textFieldStyle(.roundedBorder)
                    .frame(width: 150)
                    .padding()
                
                NavigationLink(destination: Text("this is the main page").navigationBarBackButtonHidden(true), isActive: $makeAccount){}
                
                Button(action: {
                    makeAccount = true
                    //this button takes user to main page
                }, label: {
                    Text("Register account")
                        .padding()
                })
            }
        }
    }
}

struct RegistrationPage_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationPage()
    }
}
