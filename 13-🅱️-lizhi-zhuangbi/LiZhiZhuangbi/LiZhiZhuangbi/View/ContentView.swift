//
//  ContentView.swift
//  LiZhiZhuangbi
//
//  Created by Frad LEE on 8/29/19.
//  Copyright © 2019 Frad LEE. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var lyricsLisViewModel = LyricsListViewModel()
    
    var body: some View {
        return VStack {
//            WebView(request: URLRequest(url: URL(string: "https://www.youtube.com/embed/Xys5wvaDUnQ?autoplay=1&modestbranding=0&autohide=1&title=1&controls=0")!))
//                .frame(height: 300, alignment: .center)
            List(0 ..< lyricsLisViewModel.lyricsList.count) { lyrics in
                HStack {
                    Text(String(lyrics))
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
