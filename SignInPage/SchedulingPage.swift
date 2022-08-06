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
        ZStack {
            Color.belizeHole //may change color
                .edgesIgnoringSafeArea(.all)
            VStack{
                Text("Select a date and time")
                    .font(.custom("Audrey-Bold", size: 30))
                
                DatePicker("Date", selection: $date, displayedComponents: [.date])
                    .datePickerStyle(.graphical)
                            
                DatePicker("", selection: $date, displayedComponents: [.hourAndMinute])
                    .labelsHidden()
                    .padding()
                
                Text("\(date.formatted(date: .complete, time: .shortened))")
                    .multilineTextAlignment(.center)
                    .font(.custom("Audrey-Bold", size: 18))
                    .frame(width: 350)
                    .padding()
                
                Button(action: {
                    next = true
                }, label: {
                    Text("Next")
                        .padding(20)
                        .font(.custom("Audrey-Medium", size: 20))
                })
                NavigationLink(destination: SchedulingPage2(date: date).navigationBarBackButtonHidden(false), isActive: $next){}
            }
            .edgesIgnoringSafeArea(.top)
        }
    }
}

struct SchedulingPage_Previews: PreviewProvider {
    static var previews: some View {
        SchedulingPage()
    }
}
