//
//  WaterIntake.swift
//  Water Balance
//
//  Created by Azamat Kenjebayev on 12/13/21.
//

import SwiftUI

struct WaterIntake: View {
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
                        .padding(.top)
                        .padding(.leading, 9)
                CustomTitle2(text: "WATER")
                            .padding(.top)
                    }
                }
                Spacer()
                CustomText(text: "Water intake")
                    .padding(.top, 62)
                DailyIntakeFrame(text: "200")
                    .padding(.horizontal, 16)
                    .keyboardType(.numberPad)
           
                Spacer()
                CustomButton(text: "Add")
                    .ignoresSafeArea(.keyboard)
                    .padding(.top, 116)
            }
        }
    }
}

struct WaterIntake_Previews: PreviewProvider {
    static var previews: some View {
        WaterIntake()
    }
}
