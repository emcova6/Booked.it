//
//  confirmationPage.swift
//  SignInPage
//
//  Created by Everyone Can Code on 8/4/22.
//

import SwiftUI

struct ConfirmationPage: View {
    var date: Date
    var body: some View {
            VStack {
                Text("ʏᴏᴜʀ ᴀᴘᴘᴏɪɴᴛᴍᴇɴᴛ ʜᴀꜱ ʙᴇᴇɴ ʙᴏᴏᴋᴇᴅ ꜰᴏʀ")
                    .padding(30)
                Text("\(date)")
                    .padding()
                Text("ᴛʜᴀɴᴋ ʏᴏᴜ ꜰᴏʀ ᴜꜱɪɴɢ ʙᴏᴏᴋᴇᴅ.ɪᴛ")
                    .padding(30)

        }
    }
}

struct ConfirmationPage_Previews: PreviewProvider {
    static var previews: some View {
        ConfirmationPage(date: prevDate) //(date: previewDate)
    }
}

var prevDate = Date() //var previewDate = Date()
