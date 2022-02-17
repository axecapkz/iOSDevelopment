//
//  FocusTField.swift
//  Pomodoro UI
//
//  Created by Azamat Kenjebayev on 12/9/21.
//

import SwiftUI

struct CustomText: View {
    var body: some View {
        ZStack{
        CustomTextField()
            }
        }
    }

    struct CustomTextField: View {
        var body: some View {
            ZStack {
                RoundedRectangle(cornerRadius: 16)
                    .fill(Color.white)
                    .frame(width: 170, height: 36)
                    .opacity(0.3)
                HStack (alignment: .center){
                    Image("pencil")
                    Text("Focus Category")
                }
                .foregroundColor(.white)
            }
        }
    }

struct CustomTextField_Previews: PreviewProvider {
    static var previews: some View {
        CustomText()
    }
}
