//
//  IphoneView.swift
//  Support
//
//  Created by Maria Vitória de Santana Gabriel on 14/08/23.
//

import SwiftUI

struct IphoneView: View {
    var body: some View {
        VStack {
            Image(systemName: "iphone")
            Text("maria vitória")
            Text("Este iPhone 13 \n Garantia Limitada")
                .font(.caption2)
            Topicos()
                
            }
            
        }
    }


struct Topicos: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Tópicos de suporte")
                .font(.title2)
                List {
                    Text("Reparo e danos físicos")
                    Text("Desempenho do dispositivo")
                    Text("Assinatura e compras")
                    Text("Compras da Apple Store")
                    Text("Senhas e segurança")
                    Text("Atualização, backup e restauração")
                }
            
        }
    }
    
    struct IphoneView_Previews: PreviewProvider {
        static var previews: some View {
            IphoneView()
        }
    }
}
