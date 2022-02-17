//
//  GoalScreen.swift
//  Water Balance
//
//  Created by Azamat Kenjebayev on 12/11/21.
//



import SwiftUI

struct GoalScreen: View {
    var body: some View {
        ZStack{
            Color.bgColor
                .opacity(1)
            VStack{
                CustomTitle(text: "WATER BALANCE")
                    .padding(.top, 108)
                CustomText(text: "What is your goal?")
                    .padding(.top, 62)
                
                //MARK: - Clickable buttons
                
                Grid()
                    .padding(.top, 32)
                Spacer()
                CustomButton(text: "Next")
                    .padding(.top, 116)
                    .padding(.bottom, 50)
            }
        }
      
    }
}

struct GoalScreen_Previews: PreviewProvider {
    static var previews: some View {
        GoalScreen()
    }
}
