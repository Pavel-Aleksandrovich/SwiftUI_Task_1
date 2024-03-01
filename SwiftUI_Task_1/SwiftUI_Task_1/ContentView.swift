//
//  ContentView.swift
//  SwiftUI_Task_1
//
//  Created by pavel mishanin on 2/3/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            ItemView()
                .tabItem {
                    Label("First", systemImage: "star")
                }
        }
    }
}

struct ItemView: View {
    
    var body: some View {
        let width = UIScreen.main.bounds.width
        
        ScrollView(.vertical) {
            ForEach(1..<101) { index in
                Text("\(index)")
                    .frame(width: width)
            }
            
        }
        .safeAreaInset(edge: .bottom) {
            Color.red
                .opacity(0.8)
                .frame(width: width, height: 50)
        }
        
    }
}

#Preview {
    ContentView()
}
