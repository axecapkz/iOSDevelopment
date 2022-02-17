//
//  FocusTextTimeTwo.swift
//  Pomodoro UI
//
//  Created by Azamat Kenjebayev on 12/10/21.
//

import SwiftUI

struct FocusTextTimeTwo: View {
    var body: some View {
        VStack{
            Text("24:32")
                .font(.system(size: 44, weight: .bold))
                .frame(width: 200, height: 56, alignment: .center)
            Text("Focus on your task")
                .font(.system(size: 16, weight: .regular))
                .frame(width: 200, height: 24, alignment: .center)
        }
        .foregroundColor(.white)
    }
}

struct FocusTextTimeTwo_Previews: PreviewProvider {
    static var previews: some View {
        FocusTextTimeTwo()
    }
}

