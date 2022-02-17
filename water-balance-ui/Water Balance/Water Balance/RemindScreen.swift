//
//  RemindScreen.swift
//  Water Balance
//
//  Created by Azamat Kenjebayev on 12/12/21.
//

import SwiftUI

struct RemindScreen: View {
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
                CustomText(text: "Remind me each")
                    .padding(.top, 62)
                
                //MARK: - Clickable buttons
                
                GridRemind()
                    .padding(.top, 32)
                Spacer()
                CustomButton(text: "Next")
                    .padding(.top, 116)
                    .padding(.bottom, 50)
            }
        }
    }
}

struct RemindScreen_Previews: PreviewProvider {
    static var previews: some View {
        RemindScreen()
    }
}
