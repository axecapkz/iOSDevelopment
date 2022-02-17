//
//  SettingsTab.swift
//  Pomodoro UI
//
//  Created by Azamat Kenjebayev on 12/10/21.
//

import SwiftUI

struct HistoryTab: View {
    var body: some View {
        ZStack{
            Color.black
                .edgesIgnoringSafeArea(.all)
            VStack{
                Text("Settings")
                    .font(.system(size: 17))
                    .fontWeight(.bold)
                    .frame(width: 130, height: 22)
                    .foregroundColor(.white)
                Text("21.11.21")
                    .font(.system(size: 20))
                    .fontWeight(.bold)
                    .frame(width: 130, height: 22)
                    .foregroundColor(.white)
                    .padding(.trailing, 270)
                ListView()
                Text("20.11.21")
                    .font(.system(size: 20))
                    .fontWeight(.bold)
                    .frame(width: 130, height: 22)
                    .foregroundColor(.white)
                    .padding(.trailing, 270)
                ListView()
                Text("19.11.21")
                    .font(.system(size: 20))
                    .fontWeight(.bold)
                    .frame(width: 130, height: 22)
                    .foregroundColor(.white)
                    .padding(.trailing, 270)
         ListView()
            }
        }
        
    }
}

struct HistoryTab_Previews: PreviewProvider {
    static var previews: some View {
        HistoryTab()
    }
}
