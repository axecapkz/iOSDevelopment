//
//  CustomTitle.swift
//  Water Balance
//
//  Created by Azamat Kenjebayev on 12/11/21.
//

import SwiftUI

struct CustomTitle: View {
    let text: String
    
    var body: some View {
        VStack(alignment: .center, spacing: 0){
        Text(text)
            .italic()
            .fontWeight(.black)
            .font(.system(size: 24))
            .frame(maxWidth: .infinity)
            .foregroundColor(Color.cerulean)
        }
    }
}

struct CustomTitle2: View {
    let text: String
    
    var body: some View {
        VStack(alignment: .center, spacing: 0){
        Text(text)
            .italic()
            .fontWeight(.black)
            .font(.system(size: 17))
            .frame(maxWidth: .infinity)
            .foregroundColor(Color.cerulean)
        }
    }
}

struct CustomText: View {
    let text: String
    
    var body: some View {
        
        VStack (alignment: .center, spacing: 0){
            Text(text)
                .font(.largeTitle)
                .fontWeight(.semibold)
                .font(.system(size: 36))
            .frame(width: 358, height: 46)
        }
    }
}

extension Color {
    static let cerulean = Color(red: 5/255, green: 165/255, blue: 239/255)
    static let moonraker = Color(red: 212/255, green: 225/255, blue: 248/255)
    static let bgColor = Color(red: 252/255, green: 253/255, blue: 255/255)
    static let borderColor = Color(red: 24/255, green: 104/255, blue: 253/255)
    static let timeColor = Color(red: 60/255, green: 60/255, blue: 67/255)
        .opacity(0.6)
    static let baseColor = "base-color"
}

struct CustomTitle_Previews: PreviewProvider {
    static var previews: some View {
        CustomTitle(text: "WATER BALANCE")
    }
}
