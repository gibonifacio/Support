//
//  SupportApp.swift
//  Support
//
//  Created by Giovanna Bonifacho on 14/08/23.
//

import SwiftUI

@main
struct SupportApp: App {
    
    
    @StateObject var dispositivoFetcher = DispositivoFetcher()
//    var dispositivos: [Dispositivo]
    
    var body: some Scene {
        WindowGroup {
            ContentView(dispositivos: dispositivoFetcher.dispositivos ?? [Dispositivo(imagem: "bla", nome: "bla", descricao: "bla", topicos: [Topico(nome: "bla", imagem: "iphone")])])
                .environmentObject(dispositivoFetcher)
        }
    }
}
