//
//  SaveBookmark.swift
//  Bookmark UI
//
//  Created by Azamat Kenjebayev on 12/8/21.
//

import SwiftUI

struct SaveBookmark: View {
    var body: some View {
        ZStack(alignment: .bottom){
            Spacer()
            PopUP()
                .padding(.top, 486)
            TextPopUp()
            VStack(alignment: .center){
                SaveBookmarkText()
                Spacer()
                SaveBookmarkButton()
                    .padding(.top, 337)
                    .padding(.bottom, 50)
                    .padding(.leading, 16)
                    .padding(.trailing, 16)
                Spacer()
            }
            CloseButton()
                .padding(.leading, 355.99)
                .padding(.trailing, 21.99)
                .padding(.top, 504)
                .padding(.bottom, 327.99)
        }
        .background(.gray)
    }
}

struct CloseButton: View {
    var body: some View {
        textButton
    }
    
    var textButton: some View {
        Button {
            print("something happened!")
        } label: {
            Image("close")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 12.01, height: 12.01)
        }
    }
}

struct TextPopUp: View {
    var body: some View {
        VStack {
            VStack {
                Text("Title")
                    .frame(width: 358, height: 22, alignment: .leading)
                    .padding(.leading, 16)
                    .padding(.top, 56)
                    .padding(.top, 12)
                title
                Text("Link")
                    .frame(width: 358, height: 22, alignment: .leading)
                    .padding(.leading, 16)
                    .padding(.bottom, 12)
                link
            }
        }
    }
    var title: some View {
        TextField("Bookmark title", text: .constant(""))
            .frame(width: 358, height: 46, alignment: .leading)
            .disableAutocorrection(true)
            .textFieldStyle(.roundedBorder)
            .padding(.leading)
    }
    var link: some View {
        TextField("Bookmark link (URL)", text: .constant(""))
            .padding(.bottom, 24)
            .frame(width: 358, height: 44, alignment: .leading)
            .disableAutocorrection(true)
            .textFieldStyle(.roundedBorder)
            .padding(.leading)
            .padding(.bottom, 132)
            .padding(.bottom, 24)
            .padding(.bottom, 12)
    }
}

struct PopUP: View {
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 16)
                .frame(width: 390, height: 362, alignment: .bottom)
                .foregroundColor(.white)
        }
    }
}


struct SaveBookmarkText: View {
    var body: some View {
        VStack{
            Text("Save your first")
                .font(.system(size: 36, weight: .bold))
            Text("bookmark")
                .font(.system(size: 36, weight: .bold))
        }
        .frame(width: 358, height: 92, alignment: .center)
        .foregroundColor(.black)
        .padding(.top, 298)
        .padding(.leading, 16)
        .padding(.trailing, 16)
    }
}

struct SaveBookmarkButton: View {
    var body: some View {
        textButton
    }
    var textButton: some View {
        Button(action:{}){
            ZStack{
                RoundedRectangle(cornerRadius: 16)
                    .fill(Color.black)
                Text("Save")
                    .foregroundColor(.white)
                    .fontWeight(.regular)
                    .padding(.bottom, 18)
                    .padding(.top, 18)
                    .padding(.leading, 24)
                    .padding(.trailing, 24)
            }
            .padding(.top, 24)
            .padding(.bottom, 50)
            .padding(.leading, 16)
            .padding(.trailing, 16)
        }
    }
}

struct SaveBookmark_Previews: PreviewProvider {
    static var previews: some View {
        SaveBookmark()
    }
}
