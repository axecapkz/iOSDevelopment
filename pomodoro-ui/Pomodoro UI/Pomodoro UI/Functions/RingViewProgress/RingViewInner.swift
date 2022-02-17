//
//  RingViewInner.swift
//  Pomodoro UI
//
//  Created by Azamat Kenjebayev on 12/9/21.
//

import SwiftUI

struct RingViewInner: View {
    var body: some View {
        ZStack{
            Circle()
                .stroke(Color.white, lineWidth: 6)
                .opacity(0.3)
                .frame(width: 248, height: 248)
        }
    }
}


struct RingView_Previews: PreviewProvider {
    static var previews: some View {
        RingViewInner()
    }
}
