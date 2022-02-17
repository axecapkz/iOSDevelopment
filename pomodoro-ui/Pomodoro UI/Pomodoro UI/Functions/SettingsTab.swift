//
//  SettingsTab.swift
//  Pomodoro UI
//
//  Created by Azamat Kenjebayev on 12/10/21.
//

import SwiftUI

struct SettingsTab: View {
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
                HStack(spacing: 200){
                    Text("Focus Time")
                        .font(.system(size: 17))
                        .frame(width: 100, height: 22)
                        .foregroundColor(.white)
                    Text("25:00")
                        .font(.system(size: 17))
                        .frame(width: 47, height: 22)
                        .foregroundColor(.white)
                }
                .padding()
                Divider().background(.gray)
                HStack(spacing: 200){
                    Text("Break Time")
                        .font(.system(size: 17))
                        .frame(width: 100, height: 22)
                        .foregroundColor(.white)
                    Text("05:00")
                        .font(.system(size: 17))
                        .frame(width: 47, height: 22)
                        .foregroundColor(.white)
                }
                .padding()
                Divider().background(.gray)
                HStack(spacing: 200){
                    Text("Sessions    ")
                        .font(.system(size: 17))
                        .frame(width: 100, height: 22)
                        .foregroundColor(.white)
                   
                    Text("       2")
                        .font(.system(size: 17))
                        .frame(width: 47, height: 22)
                        .foregroundColor(.white)
                }
                .padding()
                Divider().background(.gray)
                Spacer()
            }
        }
        
    }
}

struct SettingsTab_Previews: PreviewProvider {
    static var previews: some View {
        SettingsTab()
    }
}
