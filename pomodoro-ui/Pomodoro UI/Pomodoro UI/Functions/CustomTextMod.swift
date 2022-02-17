//
//  CustomTextField.swift
//  Pomodoro UI
//
//  Created by Azamat Kenjebayev on 12/10/21.
//

import SwiftUI

struct CustomTextMod: View {
    var body: some View {
        VStack {
            VStack {
                Text("")
                    .frame(width: 46, height: 22, alignment: .leading)
//                    .padding(.leading, 16)
//                    .padding(.top, 56)
//                    .padding(.top, 12)
                time
            }
        }
    }
    var time: some View {
        TextField("25:00", text: .constant(""))
            .frame(width: 46, height: 22, alignment: .trailing)
            .disableAutocorrection(true)
            .textFieldStyle(.roundedBorder)
            .padding(.leading)
    }
}


struct CustomTextMod_Previews: PreviewProvider {
    static var previews: some View {
        CustomTextMod()
    }
}
