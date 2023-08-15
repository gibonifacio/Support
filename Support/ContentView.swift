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
                    Label("Suporte", systemImage: "square.split.2x2.fill")
                }
            SuporteView()
                .tabItem {
                    Label("Suporte", systemImage: "mappin.and.ellipse")
                }
            AtividadeView()
                .tabItem {
                    Label("Suporte", systemImage: "clock.fill")
                }
            Rectangle()
        }
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
