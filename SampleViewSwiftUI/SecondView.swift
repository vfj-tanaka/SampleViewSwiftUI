//
//  SecondView.swift
//  SampleViewSwiftUI
//
//  Created by mtanaka on 2022/09/29.
//

import SwiftUI

struct Symbol: Identifiable {
    var id = UUID()
    var image: String
    var name: String
}

struct SecondView: View {
    
    private var frameWidth: CGFloat {
        UIScreen.main.bounds.width
    }
    
    var body: some View {
        
        ScrollView(.vertical, showsIndicators: false) {
            VStack {
                
                VStack(spacing: 20) {
                    
                    Image("noImage")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 150, height: 150)
                        .cornerRadius(75)
                    
                    Text("Tanaka Makoto")
                        .font(.system(size: 20, weight: .semibold))
                    
                    Text("サンプルああああああああああああああああああ")
                }
                .padding(20)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach(1..<20) { _ in
                            Circle()
                                .frame(width: 60)
                                .foregroundColor(.purple)
                        }
                    }
                }
                
                let symbols = [Symbol(image: "bolt.fill", name: "bolt"),
                               Symbol(image: "leaf.fill", name: "leaf"),
                               Symbol(image: "hare.fill", name: "hare"), Symbol(image: "bolt.fill", name: "bolt"),
                               Symbol(image: "leaf.fill", name: "leaf"),
                               Symbol(image: "hare.fill", name: "hare"), Symbol(image: "bolt.fill", name: "bolt"),
                               Symbol(image: "leaf.fill", name: "leaf"),
                               Symbol(image: "hare.fill", name: "hare"), Symbol(image: "bolt.fill", name: "bolt"),
                               Symbol(image: "leaf.fill", name: "leaf"),
                               Symbol(image: "hare.fill", name: "hare"), Symbol(image: "bolt.fill", name: "bolt"),
                               Symbol(image: "leaf.fill", name: "leaf"),
                               Symbol(image: "hare.fill", name: "hare"),Symbol(image: "bolt.fill", name: "bolt"),
                               Symbol(image: "leaf.fill", name: "leaf"),
                               Symbol(image: "hare.fill", name: "hare"),Symbol(image: "bolt.fill", name: "bolt"),
                               Symbol(image: "leaf.fill", name: "leaf"),
                               Symbol(image: "hare.fill", name: "hare"),Symbol(image: "bolt.fill", name: "bolt"),
                               Symbol(image: "leaf.fill", name: "leaf"),
                               Symbol(image: "hare.fill", name: "hare"),Symbol(image: "bolt.fill", name: "bolt"),
                               Symbol(image: "leaf.fill", name: "leaf"),
                               Symbol(image: "hare.fill", name: "hare"),Symbol(image: "bolt.fill", name: "bolt"),
                               Symbol(image: "leaf.fill", name: "leaf"),
                               Symbol(image: "hare.fill", name: "hare"),Symbol(image: "drop.fill", name: "drop"),
                               Symbol(image: "flame.fill", name: "flame"),
                               Symbol(image: "bolt.fill", name: "bolt"),
                               Symbol(image: "leaf.fill", name: "leaf"),
                               Symbol(image: "hare.fill", name: "hare"),
                               Symbol(image: "tortoise.fill", name: "tortoise")
                ]
                // 1行あたり3つのアイコンを表示する
                let columns: [GridItem] = Array(repeating: .init(.flexible(minimum: 80)), count: 3)
                
                LazyVGrid(columns: columns, spacing: 20, pinnedViews: .sectionHeaders) {
                    Section(header:
                                HStack {
                        Button {
                            
                        } label: {
                            Image(systemName: "playstation.logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: frameWidth / 2, height: 30)
                                .foregroundColor(.black)
                        }
                        
                        Button {
                            
                        } label: {
                            Image(systemName: "xbox.logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: frameWidth / 2, height: 30)
                                .foregroundColor(.black)
                        }
                    }
                        .frame(width: frameWidth, height: 50)
                    ) {
                        ForEach(symbols) { symbol in
                            VStack {
                                Image(systemName: symbol.image)
                                Text(symbol.name)
                            }
                        }
                    }
                    .background(.white)
                }
            }
        }
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}
