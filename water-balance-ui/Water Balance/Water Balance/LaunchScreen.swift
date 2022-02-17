//
//  LaunchScreen.swift
//  Water Balance
//
//  Created by Azamat Kenjebayev on 12/11/21.
//

import SwiftUI

struct LaunchScreen: View {
    var body: some View {
        ZStack{
            Color.white
                .edgesIgnoringSafeArea(.all)
            VStack{
                CustomTitle(text: "Water Balance")
                    .padding(.top, 200)
                ZStack{
                    Text("Loading...")
                        .foregroundColor(Color.TextColor)
                    Image("Level")
                    Image("Base")
                }
                Spacer()
            }
        }
    }
}

struct LaunchScreen_Previews: PreviewProvider {
    static var previews: some View {
        LaunchScreen()
    }
}
