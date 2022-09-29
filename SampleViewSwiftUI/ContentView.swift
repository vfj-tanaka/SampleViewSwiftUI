//
//  ContentView.swift
//  SampleViewSwiftUI
//
//  Created by mtanaka on 2022/09/28.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        TabView {
            FirstView()
                .tabItem {
                    Image(systemName: "message.fill")
                    Text("メッセージ")
                }
            SecondView()
                .tabItem {
                    Image(systemName: "face.smiling.fill")
                    Text("スタンプ")
                }
        }
        .accentColor(.black)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
