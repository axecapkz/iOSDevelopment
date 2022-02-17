//
//  CustomButton.swift
//  Pomodoro UI
//
//  Created by Azamat Kenjebayev on 12/9/21.
//

import SwiftUI

struct CustomButton: View {
    let img: String
    var action: () -> Void = {}

    var body: some View {
        Button(action: action) {
            ZStack {
                Circle()
                    .frame(width: 52, height: 52)
                    .opacity(0.3)
                Image(img)
                
            }
        }
    }
}

struct CustomButton_Previews: PreviewProvider {
    static var previews: some View {
        CustomButton(img: "")
    }
}
