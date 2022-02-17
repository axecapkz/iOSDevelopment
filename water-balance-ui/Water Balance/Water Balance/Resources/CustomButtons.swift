//
//  CustomButton.swift
//  Water Balance
//
//  Created by Azamat Kenjebayev on 12/11/21.
//

import SwiftUI

struct CustomButton: View {
    let text: String
    var action: () -> Void = {}

    var body: some View {
        Button(action: action) {
            ZStack {
                HStack(alignment: .center, spacing: 0) {
                    RoundedRectangle(cornerRadius: 16, style: .continuous)
                        .fill(Color.blue)
                    .frame(width: 358, height: 60, alignment: .center)
                }
                Text(text)
                    .font(.system(size: 22, weight: .semibold))
                    .foregroundColor(.white)
                    .fontWeight(.regular)
                    .padding(.bottom, 18)
                    .padding(.top, 18)
                    .padding(.leading, 24)
                    .padding(.trailing, 24)
                
            }
        }
    }
}

struct CustomRemindButton: View {
    let text: String
    var action: () -> Void = {}
    
    var body: some View {
        Button(action: action) {
            ZStack {
                HStack(alignment: .center, spacing: 0) {
                    ZStack{
                        RoundedRectangle(cornerRadius: 16)
                            .foregroundColor(Color.boxColor)
                        Text(text)
                            .foregroundColor(Color.TextColor)
                            .font(.system(size: 16))
                            .fontWeight(.semibold)
                        
                    }
//                    .padding([.leading, .trailing], 14)
                }
            }
        }
    }
}

struct CustomButton_Previews: PreviewProvider {
    static var previews: some View {
        CustomButton(text: "")
    }
}
