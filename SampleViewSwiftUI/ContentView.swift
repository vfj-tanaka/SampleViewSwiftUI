//
//  ContentView.swift
//  SampleViewSwiftUI
//
//  Created by mtanaka on 2022/09/28.
//

import SwiftUI

struct ContentView: View {
    
    init() {
        let navigationBarAppearance = UINavigationBarAppearance()
        navigationBarAppearance.backgroundColor = .white
        navigationBarAppearance.shadowColor = .clear
        UINavigationBar.appearance().standardAppearance = navigationBarAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = navigationBarAppearance
        let tabBarAppearance = UITabBar.appearance()
        tabBarAppearance.unselectedItemTintColor = .lightGray
        tabBarAppearance.backgroundColor = .blue
    }
    
    enum Tabs: String {
        case tab0 = "メッセージ"
        case tab1 = "プロフィール"
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
            .navigationBarTitleDisplayMode(.inline)
            .onChange(of: selectedTab) { tab in
                navigationTitle = selectedTab.rawValue
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {
                        print("左のボタンが押されたよ")
                    }) {
                        Image(systemName: "ellipsis.circle")
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        print("右のボタンが押されたよ")
                    }){
                        HStack {
                            Image(systemName: "gearshape")
                        }
                    }
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
