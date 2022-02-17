//
//  GreatJob.swift
//  Water Balance
//
//  Created by Azamat Kenjebayev on 12/13/21.
//

import SwiftUI

struct GreatJob: View {
    
    var body: some View {
        
        ZStack {
            RoundedRectangle(cornerRadius: 16)
                .fill(LinearGradient(gradient: Gradient(colors: [Color.moonraker, .white]), startPoint: .top, endPoint: .bottom))
            VStack{
                ZStack{
                Circle()
                    .trim(from: 0, to: 1)
                    .stroke(Color.white, lineWidth: 4)
                    .frame(width: 180, height: 180)
                    .padding(.top,32)
                    Image("Level")
                    .frame(width: 160, height: 160)
                    .padding(.top,32)
                }
                Spacer()
            }
            VStack(spacing:0){
                Text("34%")
                    .font(.system(size: 36, weight: .bold))
                    .foregroundColor(Color.TextColor)
                    .padding(.top,90)
                Text("0,8 out of 2,4 L")
                    .font(.system(size: 16))
                    .foregroundColor(Color.TextColor)
                    .padding(.top,2)
                Text("Monday, 25th of November")
                    .font(.system(size: 17))
                    .foregroundColor(Color.TextColor)
                    .padding(.top,98)
                Spacer()
            }.padding(.bottom, 100)
        }
        .frame(width: 358, height: 332)
    }
}

struct GreatJob_Previews: PreviewProvider {
    static var previews: some View {
        GreatJob()
    }
}
