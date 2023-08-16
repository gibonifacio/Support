//
//  ClasseDispositivos.swift
//  Support
//
//  Created by Maria Vitória de Santana Gabriel on 15/08/23.
//

import Foundation
import SwiftUI


struct Dispositivo: Identifiable {
    var id = UUID()
    var imagem: String
    var nome: String
    var descricao: String
    var topicos: [Topico]
}
