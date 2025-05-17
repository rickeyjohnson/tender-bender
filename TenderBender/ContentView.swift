//
//  ContentView.swift
//  TenderBender
//
//  Created by Rickey Johnson on 5/17/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "location")
                    
                }
        }
    }
}

#Preview {
    ContentView()
}
