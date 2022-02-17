//
//  Grid.swift
//  Water Balance
//
//  Created by Azamat Kenjebayev on 12/12/21.
//

import SwiftUI

struct Grid: View {
    @State var item1Selected: Bool = false
    @State var item2Selected: Bool = false
    @State var item3Selected: Bool = false
    @State var item4Selected: Bool = false
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 16)
                .foregroundColor(Color.moonraker)
            
            VStack(alignment: .center, spacing: 14) {
                CustomRadioButton(title: "Goal Number One", selected: self.$item1Selected)
                
                CustomRadioButton(title: "Goal Number Two", selected: self.$item2Selected)
                
                CustomRadioButton(title: "Goal Number Two", selected: self.$item3Selected)
                
                CustomRadioButton(title: "Goal Number Four", selected: self.$item4Selected)
            }
            .padding(.horizontal, 19)
            .padding(.vertical, 24)
        }
        .frame(height: 330)

        
    }
}

struct CustomRadioButton: View {
    var title: String = ""
    @Binding var selected: Bool
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 16)
                .foregroundColor(Color.boxColor)
            HStack {
                Text(title)
                    .foregroundColor(Color.TextColor)
                    .font(.system(size: 16))
                    .fontWeight(.semibold)
                Spacer()
                Image(self.selected ? "picker" : "picker-empty")
            }
            .padding([.leading, .trailing], 24)
        }
        .onTapGesture {
            self.selected.toggle()
        }
    }
}

extension Color {
    static let TextColor = Color(red: 47/255, green: 47/255, blue: 51/255)
        .opacity(1)
    static let boxColor = Color(red: 252/255, green: 253/255, blue: 255/255)
        .opacity(1)
}

struct Grid_Previews: PreviewProvider {
    static var previews: some View {
        Grid()
    }
}
