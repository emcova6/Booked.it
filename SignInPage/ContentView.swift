//
//  ContentView.swift
//  SignInPage
//
//  Created by Everyone Can Code on 7/25/22.
//

import SwiftUI

struct ContentView: View {
    @State var username: String = ""
    @State var password: String = ""
    @State var signIn: Bool = false
    var body: some View {
        NavigationView {
            VStack {
                Text("Welcome!")
                    .font(.title)
                
                Image(systemName: "calendar.circle.fill")
                    .font(.title)
                    .padding()
                
                TextField ("Username", text: $username)
                    .textFieldStyle(.roundedBorder)
                    .frame(width: 150)
                    .padding()
                
                SecureField("Password", text: $password)
                    .textFieldStyle(.roundedBorder)
                    .frame(width: 150)
                    .padding()
                
                NavigationLink(destination: Text("Logged in"), isActive: $signIn){ EmptyView() }
                
                Button(action: {
                    signIn = true
                }, label: {
                    Text("Sign In")
                })
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
