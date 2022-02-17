//
//  WebView.swift
//  Bookmark UI
//
//  Created by Azamat Kenjebayev on 12/8/21.
//

import SwiftUI

struct WebView: View {
    var body: some View {
        WebViewImage()
    }
}

struct WebViewImage: View {
    var body: some View {
        Image("Webview")
            .frame(width: 390, height: 614, alignment: .center)
    }
}

struct WebView_Previews: PreviewProvider {
    static var previews: some View {
        WebView()
    }
}
