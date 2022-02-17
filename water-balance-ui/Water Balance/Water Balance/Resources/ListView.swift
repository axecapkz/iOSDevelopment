//
//  ListView.swift
//  Water Balance
//
//  Created by Azamat Kenjebayev on 12/13/21.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        VStack {
            HStack{
                Text("250 ml")
                    .font(.system(size: 17))
                    .frame(height: 22)
                    .foregroundColor(Color.TextColor)
                Spacer()
                Text("12:13")
                    .font(.system(size: 17))
                    .frame(width: 47, height: 22)
                    .foregroundColor(Color.timeColor)
            }
            .padding()
            Divider()
                .opacity(0.2)
            HStack{
                Text("200 ml")
                    .font(.system(size: 17))
                    .frame(height: 22)
                    .foregroundColor(Color.TextColor)
                Spacer()
                Text("14:10")
                    .font(.system(size: 17))
                    .frame(width: 47, height: 22)
                    .foregroundColor(Color.timeColor)
            }
            .padding()
            Divider()
                .opacity(0.2)
            HStack{
                Text("50 ml")
                    .font(.system(size: 17))
                    .frame(height: 22)
                    .foregroundColor(Color.TextColor)
                Spacer()
                Text("15:13")
                    .font(.system(size: 17))
                    .frame(width: 47, height: 22)
                    .foregroundColor(Color.timeColor)
            }
            .padding()
            Divider()
                .opacity(0.2)
            HStack{
                Text("300 ml")
                    .font(.system(size: 17))
                    .frame(height: 22)
                    .foregroundColor(Color.TextColor)
                Spacer()
                Text("19:10")
                    .font(.system(size: 17))
                    .frame(width: 47, height: 22)
                    .foregroundColor(Color.timeColor)
            }
            .padding()
            Divider()
                .opacity(0.2)
        }
    }
}

struct ListView2: View {
    var body: some View {
        VStack {
            HStack{
                Text("Daily Intake Level")
                    .font(.system(size: 17))
                    .frame(height: 22)
                    .foregroundColor(Color.TextColor)
                Spacer()
                Text("2400 ML")
                    .font(.system(size: 17))
                    .frame(height: 22)
                    .foregroundColor(Color.timeColor)
                Image(systemName: "chevron.right")
                    .font(.system(size: 17))
                    .frame(height: 22)
                    .foregroundColor(Color.timeColor)
            }
            .padding()
            Divider()
                .opacity(0.2)
            HStack{
                Text("Your goal")
                    .font(.system(size: 17))
                    .frame(height: 22)
                    .foregroundColor(Color.TextColor)
                Spacer()
                Image(systemName: "chevron.right")
                    .font(.system(size: 17))
                    .frame(height: 22)
                    .foregroundColor(Color.timeColor)
            }
            .padding()
            Divider()
                .opacity(0.2)
            HStack{
                Text("Reminder")
                    .font(.system(size: 17))
                    .frame(height: 22)
                    .foregroundColor(Color.TextColor)
                Spacer()
                Image(systemName: "chevron.right")
                    .font(.system(size: 17))
                    .frame(height: 22)
                    .foregroundColor(Color.timeColor)
            }
            .padding()
            Divider()
                .opacity(0.2)
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView2()
    }
}
