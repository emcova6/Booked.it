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
            ZStack {
                ZStack {}
                    .frame( maxWidth: .infinity, maxHeight: .infinity)
                    .background(Image("rainbow bg").resizable())
                    .ignoresSafeArea()
            VStack {
                Text("Welcome to Booked.it")
                    .font(.custom("Audrey-Medium", size: 32))
                
                //Image(systemName: "calendar.circle.fill")
                //    .font(.title)
                //    .padding()
                
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
                
                NavigationLink(destination: MainPage().navigationBarBackButtonHidden(true), isActive: $signIn){}
                
                Button(action: {
                    signIn = true
                }, label: {
                    Text("Sign In")
                        .font(.custom("Audrey-Medium", size: 22))
                        .padding(25)
                })
                
                NavigationLink(destination: RegistrationPage().navigationBarBackButtonHidden(false), isActive: $createAccount){}
                
                Text("Don't have an account?")
                    .font(.custom("Audrey-Normal", size: 22))
                    .padding()
                
                Button(action: {
                    createAccount = true
                }, label: {
                    Text("Create Account")
                        .font(.custom("Audrey-Bold", size: 22))

                })
            }
            .navigationTitle("")
            .navigationBarHidden(true)
        }
    }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            //.preferredColorScheme(.dark) //changes app to dark mode
    }
}

