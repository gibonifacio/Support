//
//  ContentView.swift
//  Support
//
//  Created by Giovanna Bonifacho on 14/08/23.
//

import SwiftUI

struct ContentView: View {
    var dispositivos: [Dispositivo]
    var servicos: [Servico]
    var body: some View {
        TabView {
            SuporteView(dispositivos: dispositivos, servicos: servicos)
                .tabItem {
                    Label("Suporte", systemImage: "square.split.2x2.fill")
                }
            MapaView()
                .tabItem {
                    Label("Suporte", systemImage: "mappin.and.ellipse")
                }
            AtividadeView()
                .tabItem {
                    Label("Suporte", systemImage: "clock.fill")
                }

            
        }.accentColor(Color.blue)
            .toolbarColorScheme(.light, for: .tabBar)


        }

        
    }
    


//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
