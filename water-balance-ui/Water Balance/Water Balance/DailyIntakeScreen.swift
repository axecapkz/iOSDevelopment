//
//  DailyIntakeScreen.swift
//  Water Balance
//
//  Created by Azamat Kenjebayev on 12/13/21.
//

import SwiftUI

struct DailyIntakeScreen: View {
    var body: some View {
        ZStack{
            Color.bgColor
                .opacity(1)
            VStack{
                HStack{
                    ZStack(alignment: .leading){
                    Image(systemName: "chevron.left")
                        .font(.system(size: 23, weight: .semibold))
                        .foregroundColor(Color.cerulean)
                        .padding(.top, 55)
                        .padding(.leading, 9)
                CustomTitle(text: "WATER BALANCE")
                    .padding(.top, 108)
                    }
                }
                CustomText(text: "Daily intake?")
                    .padding(.top, 62)
                DailyIntakeFrame(text: "2400")
                    .padding(.horizontal, 16)
                    .keyboardType(.numberPad)
           
                Spacer()
                CustomButton(text: "Save")
                    .ignoresSafeArea(.keyboard)
                    .padding(.top, 116)
            }
        }
    }
}

struct DailyIntakeScreen_Previews: PreviewProvider {
    static var previews: some View {
        DailyIntakeScreen()
    }
}
