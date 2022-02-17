//
//  FifthScreen.swift
//  Pomodoro UI
//
//  Created by Azamat Kenjebayev on 12/9/21.
//

import SwiftUI

struct FifthView: View {
    var body: some View {
        ZStack{
            VStack{
        Color.black
                .ignoresSafeArea()
            }
            SettingsTab()
            MyTabView()
        }
    }
}

struct FifthView_Previews: PreviewProvider {
    static var previews: some View {
        FifthView()
    }
}
