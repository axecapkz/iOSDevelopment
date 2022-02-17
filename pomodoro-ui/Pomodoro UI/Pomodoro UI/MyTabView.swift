//
//  MyTabView.swift
//  Pomodoro UI
//
//  Created by Azamat Kenjebayev on 12/9/21.
//

import SwiftUI

struct MyTabView: View { /// here!
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
                        FocusTextTime()
                        RingViewProgress()
                    }
                    .padding(.bottom, 30)
                    ZStack{
                        HStack{
                            Spacer()
                            CustomButton(img: "play")
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
                
//MARK: - Second Tab - "Settings"
            
                ZStack {
                    Color.black
                        .edgesIgnoringSafeArea(.all)
                    Text("")
                  SettingsTab()
                }
                .tabItem {
                    Label("Settings", systemImage: "list.bullet")
                }
                .tag(2)

//MARK: - Third Tab - "History"
            
                ZStack {
                    Color.black
                        .edgesIgnoringSafeArea(.all)
                    Text("")
                    HistoryTab()
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
    
    struct MyTabView_Previews: PreviewProvider {
        static var previews: some View {
            MyTabView()
        }
    }
