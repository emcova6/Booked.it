//
//  SchedulingPage2.swift
//  SignInPage
//
//  Created by Everyone Can Code on 8/2/22.
//

import SwiftUI

struct SchedulingPage2: View {
    @State var submit: Bool = false
    @State private var isSelected = false
    @State private var isSelected2 = false
    @State private var showAlert = false
    @State private var alertText = ""
    @State var name: String = ""
    @State var email: String = ""
    @State var phone: String = ""
    var date: Date
    var body: some View {
        VStack {
            
            Text("You booked your appointment for the following date & time: \(date)")
                .padding()
                .frame(width: 350)
            
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
            
            VStack(spacing: 30) {
                Text("Have you had any contact with someone with Covid-19 within the past 14 days?")
                    .padding()
                HStack {
                    questionnaireButtons(
                    isSelected: $isSelected,
                    color: .blue,
                    text: "Yes")
                        .onTapGesture {
                            isSelected.toggle()
                            if isSelected {
                                isSelected2 = false
                            }
                        }
                    questionnaireButtons(
                    isSelected: $isSelected,
                    color: .red,
                    text: "No")
                        .onTapGesture {
                            isSelected2.toggle()
                            if isSelected2 {
                                isSelected = false
                            }
                        }
                }
                .frame(width: 350)
                
                Button("Submit") {
                    alertText = isSelected ? "Okay! Make sure to wear a mask!" : "Clear to go!"
                    showAlert.toggle()
                }
                .padding()
                .alert(alertText, isPresented: $showAlert) {
                    Button("Continue") {
                        submit = true
                    }
                    Button("Back") {
                        submit = false
                    }
                }
                NavigationLink(destination: ConfirmationPage(date: date).navigationBarBackButtonHidden(true), isActive: $submit){}
            }
    }
}

struct SchedulingPage2_Previews: PreviewProvider {
    static var previews: some View {
        SchedulingPage2(date: previewDate)
    }
}
}

var previewDate = Date()




