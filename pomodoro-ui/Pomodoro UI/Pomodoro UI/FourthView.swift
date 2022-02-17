//
//  FourthView.swift
//  Pomodoro UI
//
//  Created by Azamat Kenjebayev on 12/10/21.
//

import SwiftUI

struct FourthView: View {
    var body: some View {
        ZStack{
            PicView
            VStack {
                CustomTextField()
                    .padding(.top, 164)
                ZStack{
                    FocusTextTimeThree()
                        .padding(.top, 50.23)
                    RingViewInner()
                        .padding(.top, 52)
                    RingViewProgress()
                        .padding(.top, 52)
                }
                ZStack {
                    HStack{
                        ZStack{
                            PopUp()
                            Grid()
                            HStack {
                                TextPopUp()
                                    .padding(.leading, 140)
                                    .padding(.bottom, 295)
                                Spacer()
                                XmarkButton(img:"close")
                                    .padding(.trailing, 26)
                                    .padding(.bottom, 295)
                            }
                        }
                    }
                    
                }
            }
        }
    }
    
    struct XmarkButton: View {
        let img: String
        var action: () -> Void = {}

        var body: some View {
            Button(action: action) {
                ZStack {
                    Image(img)
                    
                }
            }
        }
    }
    
    struct TextPopUp: View {
        var body: some View {
                Text("Focus Category")
        }
    }
    
    
    struct FourthView_Previews: PreviewProvider {
        static var previews: some View {
            FourthView()
        }
    }
}
