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
            VStack{
                Text("Create an account")
                    .font(.custom("Audrey-Normal", size: 32))
                
                Text("It only takes a minute!")
                    .font(.custom("Audrey-Normal", size: 22))
                    .padding()
                
                TextField ("First name", text: $firstName)
                    .textFieldStyle(.roundedBorder)
                    .font(.custom("Audrey-Normal", size: 18))
                    .frame(width: 150)
                    .padding()
                
                TextField ("Last name", text: $lastName)
                    .textFieldStyle(.roundedBorder)
                    .font(.custom("Audrey-Normal", size: 18))
                    .frame(width: 150)
                    .padding()
                
                TextField ("Email", text: $email)
                    .textFieldStyle(.roundedBorder)
                    .font(.custom("Audrey-Normal", size: 18))
                    .frame(width: 150)
                    .padding()
                
                SecureField("Password", text: $password)
                    .textFieldStyle(.roundedBorder)
                    .font(.custom("Audrey-Normal", size: 18))
                    .frame(width: 150)
                    .padding()
                
                NavigationLink(destination: MainPage().navigationBarBackButtonHidden(true), isActive: $makeAccount){}
                
                Button(action: {
                    makeAccount = true
                }, label: {
                    Text("Register account")
                        .font(.custom("Audrey-Bold", size: 22))
                        .padding(30)
                })
            }
            .navigationTitle("")
            .navigationBarHidden(true)
    }
}

struct RegistrationPage_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationPage()
    }
}
