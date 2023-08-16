//
//  ServicoSheetView.swift
//  Support
//
//  Created by Giovanna Bonifacho on 16/08/23.
//

import Foundation
import SwiftUI


struct ServicoSheetView: View {
    var servicos: [Servico]
    @State var sheetServico = false
    
    var body: some View {
        Button {
            sheetServico.toggle()
        } label: {
            HStack {
                Text("Meus serviços")
                    .bold()
                    .font(.title2)
                    .tint(.black)
                Image(systemName: "greaterthan")
                    .tint(.black)
            }
        }.sheet(isPresented: $sheetServico) {
            NavigationStack {
                VStack {
                    List(servicos) { servico in
                        HStack {
                            Image(servico.imagem)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 50, height: 50)
                            VStack (alignment: .leading){
                                Text(servico.nome)
                                Text(servico.descricao)
                            }
                        }
                        
                    }
                    .listStyle(GroupedListStyle())
                }
                .navigationTitle("Meus serviços")
            }
        }
    }
}


