//
//  ContentView.swift
//  Support
//
//  Created by Giovanna Bonifacho on 14/08/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "person")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Ola ")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
