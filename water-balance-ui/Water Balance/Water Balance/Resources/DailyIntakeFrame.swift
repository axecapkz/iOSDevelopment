//
//  DailyIntakeFrame.swift
//  Water Balance
//
//  Created by Azamat Kenjebayev on 12/13/21.
//

import SwiftUI

struct DailyIntakeFrame: View {
    var text: String
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 16)
                .foregroundColor(Color.moonraker)
            HStack{
                VStack(alignment: .center, spacing: 0) {
                    TextField(text, text: .constant(""))
                        .foregroundColor(.cerulean)
                        .font(.system(size: 16))
                        .frame(height: 60)
                        .frame(maxWidth: .infinity)
                        .background(Color.boxColor)
                        .cornerRadius(16)
                }
                .padding(.leading, 19)
                .padding(.vertical, 24)
                VStack(alignment: .center, spacing: 0){
                    Text("ML")
                        .padding(.trailing, 59)
                        .padding(.leading, 12)
                }
            }
        }
        .frame(width: 358, height: 108)
    }
}

struct DailyIntakeFrame_Previews: PreviewProvider {
    static var previews: some View {
        DailyIntakeFrame(text: "")
    }
}
