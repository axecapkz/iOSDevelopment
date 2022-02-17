//
//  TheGoalScreen.swift
//  Water Balance
//
//  Created by Azamat Kenjebayev on 12/13/21.
//

import SwiftUI

struct TheGoalScreen: View {
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
                CustomTitle2(text: "THE GOAL")
                            .padding(.top)
                    }
                }
                Spacer()
                CustomText(text: "What is your goal?")
                    .padding(.top, 62)
                
                //MARK: - Clickable buttons
                
                Grid()
                    .padding(.top, 32)
                Spacer()
                CustomButton(text: "Save")
                    .padding(.top, 116)
                    .padding(.bottom, 50)
            }
        }
      
    }
}

struct TheGoalScreen_Previews: PreviewProvider {
    static var previews: some View {
        TheGoalScreen()
    }
}
