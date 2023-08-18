//
//  ServicoSuporteView.swift
//  Support
//
//  Created by Giovanna Bonifacho on 16/08/23.
//

import Foundation
import SwiftUI

struct ServicoSuporteView: View {
    var servico: Servico
    
    @State var isPresented = false
    
    var body: some View {
//        NavigationStack {
            VStack {
                Image(servico.imagem)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                Text(servico.nome).font(.title2)
                Text(servico.descricao)
                    .font(.callout)
                    .multilineTextAlignment(.center)
                Text("Tópicos de suporte")
                
                List(servico.topicos) { topico in
                    HStack {
                        Image(topico.imagem)
                        Text(topico.nome)
                    }
                    
                }
            }
//        }
    }
    
}


