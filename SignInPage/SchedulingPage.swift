//
//  BookingPage.swift
//  SignInPage
//
//  Created by Everyone Can Code on 8/1/22.
//

import SwiftUI

struct SchedulingPage: View {
    @State var date = Date()
    @State var next: Bool = false
    var body: some View {
        //sets background to gradient
        LinearGradient(gradient: Gradient(colors: [Color.sunflower, Color.carrot]), startPoint: .top, endPoint: .bottom)
                   .edgesIgnoringSafeArea(.all)
                   .overlay(
            VStack{
                Text("Select a date and time")
                    .font(.custom("Audrey-Bold", size: 30))
                
                //calender you choose a date from
                DatePicker("Date", selection: $date, displayedComponents: [.date])
                    .datePickerStyle(.graphical)
                  
                //timebar you choose a time from
                DatePicker("", selection: $date, displayedComponents: [.hourAndMinute])
                    .labelsHidden()
                    .padding()
                
                //shows date and time chosen
                Text("\(date.formatted(date: .complete, time: .shortened))")
                    .multilineTextAlignment(.center)
                    .font(.custom("Audrey-Bold", size: 18))
                    .frame(width: 350)
                    .padding()
                
                //button that navigates to next page
                Button(action: {
                    next = true
                }, label: {
                    Text("Next")
                        .padding(20)
                        .font(.custom("Audrey-Medium", size: 20))
                })
                NavigationLink(destination: SchedulingPage2(date: date).navigationBarBackButtonHidden(false), isActive: $next){}
            })
    }
}

struct SchedulingPage_Previews: PreviewProvider {
    static var previews: some View {
        SchedulingPage()
    }
}
