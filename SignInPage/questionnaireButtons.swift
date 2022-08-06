//
//  questionnaireButtons.swift
//  SignInPage
//
//  Created by Everyone Can Code on 8/4/22.
//

import SwiftUI

struct questionnaireButtons: View {
    @Binding var isSelected: Bool
    @State var color: Color
    @State var text: String
    var body: some View {
        ZStack {
            Capsule()
                .frame(height: 50)
                .foregroundColor(isSelected ? color: .gray)
            Text(text)
                .font(.custom("Audrey-Bold", size: 18))
                .foregroundColor(.white)
        }
    }
}

struct questionnaireButtons_Previews: PreviewProvider {
    static var previews: some View {
        questionnaireButtons(isSelected: .constant(false), color: .gray, text: "Option")
    }
}

