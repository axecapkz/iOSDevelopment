//
//  RinngViewProgress.swift
//  Pomodoro UI
//
//  Created by Azamat Kenjebayev on 12/9/21.
//

import SwiftUI

struct RinngViewProgress: View {
    var body: some View {
      RingViewProgress()
    }
}


struct RingViewProgress: View {
    var body: some View {
        Circle()
            .stroke(Color.white, lineWidth: 6)
            .opacity(0.3)
            .frame(width: 248, height: 248)
            .overlay(
                Circle()
                    .trim(from: 0.0, to: 0.1)
                    .stroke(Color.white, lineWidth: 6)
                    .rotationEffect(.degrees(270))
            )
    }
}

struct RinngViewProgress_Previews: PreviewProvider {
    static var previews: some View {
        RinngViewProgress()
    }
}
