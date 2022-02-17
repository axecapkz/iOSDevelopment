//
//  ContentView.swift
//  Bookmark UI
//
//  Created by Azamat Kenjebayev on 12/6/21.
//

import SwiftUI

struct WelcomeScreen: View {
    var body: some View {
        ZStack{
            VStack{
                WelcomeImage()
                WelcomeText()
                WelcomeButton()
            }
        }
        .background(.black)
    }
}

struct WelcomeImage: View {
    var body: some View {
        Image("BG_Image")
            .frame(width: 390, height: 614, alignment: .center)
            .ignoresSafeArea()
    }
}

struct WelcomeText: View {
    var body: some View {
        Text("Save all interesting links in one app")
            .font(.system(size: 36, weight: .bold))
            .frame(width: 358, height: 92, alignment: .topLeading)
            .foregroundColor(.white)
    }
}

struct WelcomeButton: View {
    var body: some View {
        textButton
    }
    var textButton: some View {
        Button(action:{}){
            ZStack{
            RoundedRectangle(cornerRadius: 16)
                .fill(Color.white)
                Text("Let’s start collecting")
                    .foregroundColor(.black)
                    .fontWeight(.regular)
                    .padding(.bottom, 18)
                    .padding(.top, 18)
                    .padding(.leading, 24)
                    .padding(.trailing, 24)
            }
            .padding(.bottom, 50)
            .padding(.leading, 16)
            .padding(.trailing, 16)
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeScreen()
            .previewInterfaceOrientation(.portrait)
    }
}
