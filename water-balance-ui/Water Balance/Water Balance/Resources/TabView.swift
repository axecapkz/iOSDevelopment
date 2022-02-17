//
//  MyTabView.swift
//  Water Balance
//
//  Created by Azamat Kenjebayev on 12/13/21.
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
            ZStack{
                Color.bgColor
                    .opacity(1)
                VStack(alignment: .center, spacing: 0){
                    CustomTitle2(text: "WATER BALANCE")
                        .padding(.top)
                    HStack{
                        ZStack(alignment: .leading){
                            VStack {
                                MainTab()
                                Text("Add your first drink for today")
                                    .font(.system(size: 36, weight: .bold))
                                    .foregroundColor(Color.TextColor)
                                    .multilineTextAlignment(.center)
                            }.padding(.top,20)
                        }.padding(.top,30)
                    }
                    Spacer()
                    CustomButton(text: "Add")
                        .padding(.bottom)
                }
            }
            .tabItem {
                Label("Main", systemImage: "house.fill") // redundant
            }
            .tag(1)
            
            //MARK: - Second Tab - "Settings"
            
            ZStack{
                Color.bgColor
                    .opacity(1)
                VStack{
                    CustomTitle2(text: "EDIT")
                        .padding(.top)
                    HStack{
                        ZStack(alignment: .leading){
                            HStack{
                            }
                            HStack{
                                ListView2()
                            }
                            
                        }
                        
                    }
                    Spacer()
                }
            }
            .tabItem {
                Label("Settings", systemImage: "list.bullet")
            }
            .tag(2)
            
            //MARK: - Third Tab - "History"
            
            ZStack{
                Color.bgColor
                    .opacity(1)
                VStack{
                    CustomTitle2(text: "TODAY")
                        .padding(.top)
                    HStack{
                        ZStack(alignment: .leading){
                            HStack{
                            }
                            HStack{
                                ListView()
                            }
                            
                        }
                        
                    }
                    Spacer()
                }
            }
            .tabItem {
                Label("History", systemImage: "doc.fill")
                    .foregroundColor(Color.blue)
            }
            .tag(3)
        }
        //        .accentColor(Color.gray)
        .edgesIgnoringSafeArea(.all)
    }
}

struct GreatJobTab: View { /// here!
    init() {
        let tabBarAppeareance = UITabBarAppearance()
        tabBarAppeareance.backgroundColor = .white
        UITabBar.appearance().standardAppearance = tabBarAppeareance
    }
    
    @State private var selectedTab: Int = 1
    
    var body: some View {
        TabView(selection: $selectedTab) {
            ZStack{
                Color.bgColor
                    .opacity(1)
                VStack(alignment: .center, spacing: 0){
                    CustomTitle2(text: "WATER BALANCE")
                        .padding(.top)
                    HStack{
                        ZStack(alignment: .leading){
                            VStack {
                                GreatJob()
                                Text("Great job!")
                                    .font(.system(size: 36, weight: .bold))
                                    .foregroundColor(Color.TextColor)
                                    .multilineTextAlignment(.center)
                            }.padding(.top,20)
                        }.padding(.top,30)
                    }
                    Spacer()
                    CustomButton(text: "Add")
                        .padding(.bottom)
                }
            }
            .tabItem {
                Label("Main", systemImage: "house.fill") // redundant
            }
            .tag(1)
            
            //MARK: - Second Tab - "Settings"
            
            ZStack{
                Color.bgColor
                    .opacity(1)
                VStack{
                    CustomTitle2(text: "EDIT")
                        .padding(.top)
                    HStack{
                        ZStack(alignment: .leading){
                            HStack{
                            }
                            HStack{
                                ListView2()
                            }
                            
                        }
                        
                    }
                    Spacer()
                }
            }
            .tabItem {
                Label("Settings", systemImage: "list.bullet")
            }
            .tag(2)
            
            //MARK: - Third Tab - "History"
            
            ZStack{
                Color.bgColor
                    .opacity(1)
                VStack{
                    CustomTitle2(text: "TODAY")
                        .padding(.top)
                    HStack{
                        ZStack(alignment: .leading){
                            HStack{
                            }
                            HStack{
                                ListView()
                            }
                            
                        }
                        
                    }
                    Spacer()
                }
            }
            .tabItem {
                Label("History", systemImage: "doc.fill")
                    .foregroundColor(Color.blue)
            }
            .tag(3)
        }
        //        .accentColor(Color.gray)
        .edgesIgnoringSafeArea(.all)
    }
}

struct MyTabView_Previews: PreviewProvider {
    static var previews: some View {
        GreatJobTab()
    }
}
