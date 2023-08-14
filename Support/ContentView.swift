//
//  ContentView.swift
//  Support
//
//  Created by Giovanna Bonifacho on 14/08/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            SuporteView()
                .tabItem {
                    Label("Suporte", systemImage: "heart")
                }
            SuporteView()
                .tabItem {
                    Label("Suporte", systemImage: "heart")
                }
            SuporteView()
                .tabItem {
                    Label("Suporte", systemImage: "heart")
                }
            
        }
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
