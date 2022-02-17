//
//  AddBookmark.swift
//  Bookmark UI
//
//  Created by Azamat Kenjebayev on 12/8/21.
//

import SwiftUI

struct AddBookmark: View {
    var body: some View {
        ZStack{
            VStack{
                TextTitle()
                BookmarkText()
                AddBookmarkButton()
            }
        }
        .background(.white)
    }
}

struct TextTitle: View {
    var body: some View {
        VStack{
        Text("Bookmark App")
                .font(.system(size: 17, weight: .regular))
                .frame(width: 130, height: 22, alignment: .center)
                .padding(.leading, 130)
                .padding(.trailing, 130)
                .padding(.top, 56)
        }
    }
}

struct BookmarkText: View {
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

struct AddBookmarkButton: View {
    var body: some View {
        textButton
    }
    var textButton: some View {
        Button(action:{}){
            ZStack{
            RoundedRectangle(cornerRadius: 16)
                .fill(Color.black)
                Text("Add bookmark")
                    .foregroundColor(.white)
                    .fontWeight(.regular)
                    .padding(.bottom, 18)
                    .padding(.top, 18)
                    .padding(.leading, 24)
                    .padding(.trailing, 24)
            }
            .padding(.top, 268)
            .padding(.bottom, 50)
            .padding(.leading, 16)
            .padding(.trailing, 16)
        }
    }
}

struct ContentView_Previews2: PreviewProvider {
    static var previews: some View {
        AddBookmark()
            .previewInterfaceOrientation(.portrait)
    }
}

