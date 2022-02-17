//
//  PopUp.swift
//  Pomodoro UI
//
//  Created by Azamat Kenjebayev on 12/9/21.
//

import SwiftUI

struct PopUp: View {
    var body: some View {
        ZStack{
            VStack{
                Color.gray
                Spacer()
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: 375, height: 362, alignment: .bottomLeading)
                    .foregroundColor(.white)
            }
        }
    }
}



struct PopUp_Previews: PreviewProvider {
    static var previews: some View {
        PopUp()
    }
}
