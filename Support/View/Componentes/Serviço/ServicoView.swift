//
//  ServiçosView.swift
//  Support
//
//  Created by Giovanna Bonifacho on 16/08/23.
//

import Foundation
import SwiftUI

struct ServicoView: View {
    var servicos: [Servico]
    
    var body: some View {
        VStack {
            HStack {
                ForEach(servicos) { servico in
                    NavigationLink {
                        ServicoSuporteView(servico: servico)
                    } label: {
                        VStack {
                            Image(servico.imagem)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 70)
                            
                            Text(servico.nome)
                                .font(.system(size: 16))
                                .bold()
                                .tint(.black)
                            
                            
                            Text(servico.descricao)
                                .tint(.gray)
                                .font(.system(size: 12))
                        }
                        .frame(width:170, height: 140)
                        
                        .background(Color("cinza"))
                        .cornerRadius(20)
                        
                        
                    }
                    
                }
            }
        }
    }
}

struct ServicoView_Previews: PreviewProvider {
    static var previews: some View {
        ServicoView(servicos: [Servico(nome: "iCloud", imagem: "iCloud", descricao: "5 GB de 5 GB", topicos: [Topico(nome: "yee", imagem: "person.fill")])])
    }
}
