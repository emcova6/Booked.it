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
        VStack{
            Text("Select a date & time")
                .font(.title)
                .bold()
            
            DatePicker("Date", selection: $date, displayedComponents: [.date])
                .datePickerStyle(.graphical) //want to only show date, not time
            
            DatePicker("Time", selection: $date, displayedComponents: [.hourAndMinute])
            
            Text("\(date)")
                .multilineTextAlignment(.center)
                .frame(width: 350)
            
            Button(action: {
                next = true
            }, label: {
                Text("Next")
                    .padding(40)
            })
            NavigationLink(destination: SchedulingPage2(date: date).navigationBarBackButtonHidden(false), isActive: $next){}
        }
        .edgesIgnoringSafeArea(.top)
    }
}

struct SchedulingPage_Previews: PreviewProvider {
    static var previews: some View {
        SchedulingPage()
    }
}
