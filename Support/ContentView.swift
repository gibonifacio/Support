//
//  ContentView.swift
//  Support
//
//  Created by Giovanna Bonifacho on 14/08/23.
//

import SwiftUI

struct ContentView: View {
    @State private var searchText = ""

    var body: some View {
        NavigationView {
            MeusDispositivos()
        .navigationTitle("Suporte")
        .searchable(text: $searchText, prompt: "Conte o que está acontecendo")
        }
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
