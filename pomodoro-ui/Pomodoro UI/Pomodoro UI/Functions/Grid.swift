//
//  Grid.swift
//  Pomodoro UI
//
//  Created by Azamat Kenjebayev on 12/9/21.
//

import SwiftUI

struct Grid: View {
    let columns = [
        GridItem(.fixed(100)),
        GridItem(.fixed(100)),
        GridItem(.fixed(100)),
    ]

    var body: some View {
        straightforwardHGrid
    }
    
    var straightforwardHGrid: some View {
          HStack {
              VStack {
                  ZStack{
                  box
                      CustomButtonGrid(text: "Work")
                          .font(.system(size: 16, weight: .regular))
                          .foregroundColor(Color.black)
                  }
                  ZStack{
                  blackBox
                      CustomButtonGrid(text: "Workout")
                          .font(.system(size: 16, weight: .regular))
                          .foregroundColor(Color.white)
                  }
                  ZStack{
                      box
                      CustomButtonGrid(text:"Meditation")
                          .font(.system(size: 16, weight: .regular))
                          .foregroundColor(Color.black)
                  }
              }
              VStack {
                  ZStack{
                  box
                      CustomButtonGrid(text:"Study")
                          .font(.system(size: 16, weight: .regular))
                          .foregroundColor(Color.black)
                  }
                  ZStack{
                  box
                      CustomButtonGrid(text:"Reading")
                          .font(.system(size: 16, weight: .regular))
                          .foregroundColor(Color.black)
                  }
                  ZStack{
                  box
                      CustomButtonGrid(text:"Others")
                          .font(.system(size: 16, weight: .regular))    .foregroundColor(Color.black)
                  }
              }
          }
      }

    struct CustomButtonGrid: View {
        let text: String
        var action: () -> Void = {}

        var body: some View {
            Button(action: action) {
                ZStack {
                    RoundedRectangle(cornerRadius: 16)
                        .fill(Color.white)
                        .frame(width: 172, height: 60)
                        .opacity(0.3)
                    Text(text)
                }
            }
        }
    }
    
    
    var box: some View {
        ZStack{
        RoundedRectangle(cornerRadius: 16)
            .fill(Color.gray.opacity(0.2))
            .frame(width: 172, height: 60)
        }
    }
    
    var blackBox: some View {
        ZStack{
        RoundedRectangle(cornerRadius: 16)
            .fill(Color.black)
            .frame(width: 172, height: 60)
        }
    }
}

struct Grid_Previews: PreviewProvider {
    static var previews: some View {
        Grid()
    }
}
