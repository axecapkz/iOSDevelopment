//
//  ThirdView.swift
//  Pomodoro UI
//
//  Created by Azamat Kenjebayev on 12/10/21.
//

import SwiftUI

struct ThirdView: View { /// here!
    init() {
        let tabBarAppeareance = UITabBarAppearance()
        tabBarAppeareance.backgroundColor = .white
        UITabBar.appearance().standardAppearance = tabBarAppeareance
    }
    
    @State private var selectedTab: Int = 1
    
    var body: some View {
        TabView(selection: $selectedTab) {
            ZStack {
                PicView
                VStack {
                    CustomTextField()
                        .padding(.top, 100)
                    Button {
                        selectedTab = 3
                    } label: {
                        Text("")
                    }
                    .padding(.bottom, 30)
                    ZStack{
                        FocusTextTimeThree()
                        RingViewProgress()
                    }
                    .padding(.bottom, 30)
                    ZStack{
                        HStack{
                            Spacer()
                            CustomButton(img: "pause")
                            Spacer()
                            CustomButton(img: "stop")
                            Spacer()
                            }
                        }
                    Spacer()
                    }
                }
                .tabItem {
                    Label("Main", systemImage: "house.circle.fill") // redundant
                }
                .tag(1)
                
                
                ZStack {
                    Color.black
                        .edgesIgnoringSafeArea(.all)
                    Text("")
                }
                .tabItem {
                    Label("Settings", systemImage: "list.bullet")
                }
                .tag(2)
                
                
                ZStack {
                    PicView
                    Text("")
                }
                .tabItem {
                    Label("History", systemImage: "doc.fill")
                }
                .tag(3)
            }
            .accentColor(.white)
            .edgesIgnoringSafeArea(.all)
        }
    }

struct ThirdView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdView()
    }
}

