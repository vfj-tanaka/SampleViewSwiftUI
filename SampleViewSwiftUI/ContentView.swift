//
//  ContentView.swift
//  SampleViewSwiftUI
//
//  Created by mtanaka on 2022/09/28.
//

import SwiftUI

struct ContentView: View {
    
    init() {
        UITabBar.appearance().unselectedItemTintColor = .lightGray
        UITabBar.appearance().backgroundColor = .blue
    }
    
    enum Tabs: String {
        case tab0 = "メッセージ"
        case tab1 = "スタンプ"
    }
    
    @State private var navigationTitle: String = Tabs.tab0.rawValue
    @State private var selectedTab: Tabs = .tab0
    
    var body: some View {
        
        NavigationStack {
            
            TabView(selection: $selectedTab) {
                FirstView()
                    .tabItem {
                        Image(systemName: "message.fill")
                        Text(Tabs.tab0.rawValue)
                    }
                    .tag(Tabs.tab0)
                SecondView()
                    .tabItem {
                        Image(systemName: "face.smiling.fill")
                        Text(Tabs.tab1.rawValue)
                    }
                    .tag(Tabs.tab1)
            }
            .accentColor(.white)
            .navigationTitle(navigationTitle)
            .onChange(of: selectedTab) { tab in
                navigationTitle = selectedTab.rawValue
            }
            .navigationTitle("サンプル")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
