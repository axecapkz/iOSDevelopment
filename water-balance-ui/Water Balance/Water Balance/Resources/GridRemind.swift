//
//  GridRemind.swift
//  Water Balance
//
//  Created by Azamat Kenjebayev on 12/12/21.
//

import SwiftUI

struct GridRemind: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 16)
                .foregroundColor(Color.moonraker)
            HStack(alignment: .center, spacing: 14){
                VStack(alignment: .center, spacing: 14) {
                    CustomRemindButton(text: "15 minutes")
                    CustomRemindButton(text: "45 minutes")
                    ZStack{
                        RoundedRectangle(cornerRadius: 16)
                            .stroke(Color.borderColor, lineWidth: 3)
                        CustomRemindButton(text: "1,5 hours")
                    }
                    CustomRemindButton(text: "3 hours")
                }
                VStack(alignment: .center, spacing: 14) {
                    CustomRemindButton(text: "30 minutes")
                    CustomRemindButton(text: "1 hour")
                    CustomRemindButton(text: "2 hours")
                    CustomRemindButton(text: "4 hours")
                    
                }
            }
            .padding(.horizontal, 19)
            .padding(.vertical, 24)
        }
        .frame(height: 330)
    }
}

struct GridReminder: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 16)
                .foregroundColor(Color.moonraker)
            HStack(alignment: .center, spacing: 14){
                VStack(alignment: .center, spacing: 14) {
                    CustomRemindButton(text: "15 minutes")
                    CustomRemindButton(text: "45 minutes")
                    ZStack{
                        RoundedRectangle(cornerRadius: 16)
                            .stroke(Color.borderColor, lineWidth: 3)
                        CustomRemindButton(text: "1,5 hours")
                    }
                    CustomRemindButton(text: "3 hours")
                }
                VStack(alignment: .center, spacing: 14) {
                    CustomRemindButton(text: "30 minutes")
                    CustomRemindButton(text: "1 hour")
                    CustomRemindButton(text: "2 hours")
                    CustomRemindButton(text: "4 hours")
                    
                }
            }
            .padding(.horizontal, 19)
            .padding(.vertical, 24)
        }
        .frame(height: 330)
    }
}

struct GridRemind_Previews: PreviewProvider {
    static var previews: some View {
        GridRemind()
    }
}

