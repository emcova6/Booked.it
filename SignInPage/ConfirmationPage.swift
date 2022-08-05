//
//  confirmationPage.swift
//  SignInPage
//
//  Created by Everyone Can Code on 8/4/22.
//

import SwiftUI

struct ConfirmationPage: View {
    @State var mainPage: Bool = false
    var date: Date
    var body: some View {
            VStack {
                Text("ʏᴏᴜʀ ᴀᴘᴘᴏɪɴᴛᴍᴇɴᴛ ʜᴀꜱ ʙᴇᴇɴ ʙᴏᴏᴋᴇᴅ ꜰᴏʀ: \(date.formatted(date: .complete, time: .shortened))")
                    .padding(30)
                Text("ᴛʜᴀɴᴋ ʏᴏᴜ ꜰᴏʀ ᴜꜱɪɴɢ ʙᴏᴏᴋᴇᴅ.ɪᴛ")
                    .padding(30)
                
                NavigationLink(destination: MainPage().navigationBarBackButtonHidden(true), isActive: $mainPage){}
                
                Button(action: {
                    mainPage = true
                }, label: {
                    Text("Back to Main Page")
                        .padding(30)
                })

        }
    }
}

struct ConfirmationPage_Previews: PreviewProvider {
    static var previews: some View {
        ConfirmationPage(date: prevDate) //(date: previewDate)
    }
}

var prevDate = Date() //var previewDate = Date()
