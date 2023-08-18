//
//  ServiçoFetcher.swift
//  Support
//
//  Created by Giovanna Bonifacho on 16/08/23.
//

import Foundation
import SwiftUI

class ServicoFetcher: ObservableObject {
    @Published var servicos: [Servico]?
    @Published var topicosICloud: [Topico]
    
    init() {
        self.topicosICloud = [Topico(nome: "Configuração e uso", imagem: "oi"),
                              Topico(nome: "Senhas e Segurança", imagem: "oi"),
                              Topico(nome: "Fotos", imagem: "oi"),
                              Topico(nome: "Backup e restauração", imagem: "oi"),
                              Topico(nome: "Mais", imagem: "oi")
        ]
        self.servicos = [Servico(nome: "iCloud", imagem: "iCloud", descricao: "5 GB de 5 GB usados", topicos: topicosICloud)]
    }
}
