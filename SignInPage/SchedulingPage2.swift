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
        //sets background to gradient
        LinearGradient(gradient: Gradient(colors: [Color.amethyst, Color.belizeHole]), startPoint: .top, endPoint: .bottom)
                   .edgesIgnoringSafeArea(.all)
                   .overlay(
            VStack {
                //shows date + time you booked appointment
                Text("You booked your appointment for \(date.formatted(date: .complete, time: .shortened))")
                    .font(.custom("Audrey-Medium", size: 22))
                    .padding()
                    .frame(width: 340)
                
                Text("Contact Information")
                    .font(.custom("Audrey-Bold", size: 30))
                    .multilineTextAlignment(.center)
                    .padding()
                
                //imput fields
                TextField("Name", text: $name)
                    .textFieldStyle(.roundedBorder)
                    .font(.custom("Audrey-Normal", size: 18))
                    .frame(width: 150)
                    .padding()
                
                TextField("Email", text: $email)
                    .textFieldStyle(.roundedBorder)
                    .font(.custom("Audrey-Normal", size: 18))
                    .frame(width: 150)
                    .padding()
                
                TextField("Phone", text: $phone)
                    .textFieldStyle(.roundedBorder)
                    .font(.custom("Audrey-Normal", size: 18))
                    .frame(width: 150)
                    .padding()
                
                    //screening question
                    Text("Have you had any contact with someone with Covid-19 within the past 14 days?")
                    .font(.custom("Audrey-MediumOblique", size: 22))
                        .padding()
                    HStack {
                        //"yes" and "no" buttons
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
                            isSelected: $isSelected2,
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
                    
                //pressing this button will give you a response based on whether you press the "yes" or "no" option
                //you will also be able to move to the next page
                    Button("Submit") {
                        alertText = isSelected ? "Make sure to sanitize your hands and wear a mask!" : "Clear to go!"
                        showAlert.toggle()
                    }
                    .font(.custom("Audrey-Medium", size: 20))
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
            })
    }
}

struct SchedulingPage2_Previews: PreviewProvider {
    static var previews: some View {
        SchedulingPage2(date: previewDate)
    }
}


var previewDate = Date()
