//
//  ContentView.swift
//  SignInPage
//
//  Created by Everyone Can Code on 7/25/22.
//

import SwiftUI

struct ContentView: View {
    @State var email: String = ""
    @State var password: String = ""
    @State var signIn: Bool = false
    @State var createAccount: Bool = false
    var body: some View {
        NavigationView {
            VStack {
                Text("Welcome to Booked.it")
                    .font(.title)
                
                Image(systemName: "calendar.circle.fill")
                    .font(.title)
                    .padding()
                
                SecureField ("Email", text: $email)
                    .textFieldStyle(.roundedBorder)
                    .frame(width: 150)
                    .padding()
                
                SecureField("Password", text: $password)
                    .textFieldStyle(.roundedBorder)
                    .frame(width: 150)
                    .padding()
                
                NavigationLink(destination: MainPage().navigationBarBackButtonHidden(true), isActive: $signIn){}
                
                Button(action: {
                    signIn = true
                }, label: {
                    Text("Sign In")
                        .padding(30)
                })
                
                NavigationLink(destination: RegistrationPage().navigationBarBackButtonHidden(true), isActive: $createAccount){}
                
                Text("Don't have an account?")
                    .padding()
                
                Button(action: {
                    createAccount = true
                    //this button takes user to registration page
                }, label: {
                    Text("Create Account")
                })
            }
            .navigationTitle("")
            .navigationBarHidden(true)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            //.preferredColorScheme(.dark) //changes app to dark mode
    }
}
