//
//  DispositivoFetcher.swift
//  Support
//
//  Created by Giovanna Bonifacho on 15/08/23.
//

import Foundation
import SwiftUI

class DispositivoFetcher: ObservableObject {
    @Published var dispositivos: [Dispositivo]?
    @Published var topicosDispositivoIphone: [Topico]
    @Published var topicosDispositivoMac: [Topico]
    
    init() {
        self.topicosDispositivoIphone = [Topico(nome: "Reparos e danos físicos", imagem: "oi"),
                                   Topico(nome: "Desempenho de dispositivos", imagem: "oi"),
                                   Topico(nome: "Assinaturas e compras", imagem: "oi"),
                                   Topico(nome: "Compras na Apple Store", imagem: "oi"),
                                   Topico(nome: "Senhas e segurança", imagem: "oi"),
                                    Topico(nome: "Atualização, backup e restauração", imagem: "oi"),
                                    Topico(nome: "Mais", imagem: "oi")]
        
        self.topicosDispositivoMac = [Topico(nome: "Apps e software", imagem: "oi"),
                                       Topico(nome: "Internet", imagem: "oi"),
                                       Topico(nome: "Bateria e energia", imagem: "oi"),
                                       Topico(nome: "Acessórios", imagem: "oi"),
                                       Topico(nome: "Dano físico ou por líquido", imagem: "oi"),
                                       Topico(nome: "ID Apple e ICloud", imagem: "oi"),
                                      Topico(nome: "Compras na Apple Store", imagem: "oi"),
                                       Topico(nome: "Mais", imagem: "oi")]
        
        self.dispositivos = [Dispositivo(imagem: "iphone", nome: "Iphone gi bonifacio", descricao: "Este Iphone 13", topicos: topicosDispositivoIphone), Dispositivo(imagem: "mackbook", nome: "MacBook Pro (66)", descricao: "MacBook Pro 14" , topicos: topicosDispositivoMac)]
    }
}
