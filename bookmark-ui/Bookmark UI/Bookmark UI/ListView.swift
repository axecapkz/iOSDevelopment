//
//  ListView.swift
//  Bookmark UI
//
//  Created by Azamat Kenjebayev on 12/8/21.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        ZStack{
            VStack {
                TextTitleList()
                    .padding()
                Spacer()
                WebSitesList()
                Spacer()
                OpenLink()
                Spacer()
            }
            SaveBookmarkButtonList()
                .padding(.top, 736)
                .padding(.bottom, 50)
                .padding(.leading, 16)
                .padding(.trailing, 16)
           
        }
        .background(.white)
    }
}

struct OpenLink: View {
    var body: some View {
        textButton
    }
    var textButton: some View {
        Button {
            print("something happened!")
        } label: {
                    Image("Group")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 18, height: 18,
                               alignment: .bottomTrailing)
                }
            }
        }

struct TextTitleList: View {
    var body: some View {
        VStack{
            Text("List")
                .font(.system(size: 17, weight: .regular))
                .frame(width: 130, height: 22, alignment: .center)
                .padding(.leading, 130)
                .padding(.trailing, 130)
                .padding(.top, 56)
        }
    }
}

struct WebSites: Identifiable {
    let id = UUID()
    var name: String
}

var links = [
    WebSites(name: "Google"),
    WebSites(name: "nFactorial School"),
    WebSites(name: "NY Times"),
    WebSites(name: "Bloomberg"),
]

struct WebSitesList: View {
    var body: some View {
        List {
            ForEach(links) { WebSites in
                Text(WebSites.name)
                    .background(.white)
            }
            .padding(.top)
            .padding(.leading, 16)
            .padding(.trailing, 48)
            .padding(.bottom, 11)
            Spacer()
        }
    }
}



struct SaveBookmarkButtonList: View {
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
            .padding(.top, 24)
            .padding(.bottom, 50)
            .padding(.leading, 16)
            .padding(.trailing, 16)
        }
    }
}







struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
