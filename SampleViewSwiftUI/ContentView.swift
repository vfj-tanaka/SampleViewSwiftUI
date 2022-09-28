//
//  ContentView.swift
//  SampleViewSwiftUI
//
//  Created by mtanaka on 2022/09/28.
//

import SwiftUI

struct Symbol: Identifiable {
    var id = UUID()
    var image: String
    var name: String
}

struct ContentView: View {
    
    let symbols = [Symbol(image: "drop.fill", name: "drop"),
                   Symbol(image: "flame.fill", name: "flame"),
                   Symbol(image: "bolt.fill", name: "bolt"),
                   Symbol(image: "leaf.fill", name: "leaf"),
                   Symbol(image: "hare.fill", name: "hare"),
                   Symbol(image: "tortoise.fill", name: "tortoise")
    ]
    
    //    let columns: [GridItem] = [GridItem(.adaptive(minimum: 100, maximum: 150))]
    // 1行あたり3つのアイコンを表示する
    let columns: [GridItem] = Array(repeating: .init(.flexible(minimum: 80)), count: 3)
    
    var body: some View {
        
        NavigationView {
            
            ScrollView {
                
                LazyVGrid(columns: columns, spacing: 20) {
                    
                    ForEach(symbols) { symbol in
                        VStack {
                            Image(systemName: symbol.image)
                            Text(symbol.name)
                        }
                    }
                }
                // 画面端からの余白を設定
                .padding(20)
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
