//
//  Serviço.swift
//  Support
//
//  Created by Giovanna Bonifacho on 16/08/23.
//

import Foundation
import SwiftUI

struct Servico: Identifiable {
    var id = UUID()
    var nome: String
    var imagem: String
    var descricao: String
    var topicos: [Topico]
    
//    init(id: UUID = UUID(), nome: String, imagem: String, descricao: String) {
//        self.id = id
//        self.nome = nome
//        self.imagem = imagem
//        self.descricao = descricao
//        self.topicos = topicos
//    }
}
