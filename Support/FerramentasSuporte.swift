//
//  FerramentasSuporte.swift
//  Support
//
//  Created by Maria Vitória de Santana Gabriel on 14/08/23.
//

import SwiftUI

struct FerramentasSuporte: View {
    var body: some View {
        NavigationView {
            VStack (alignment: .leading) {
                Text("Ferramentas de suporte")
                    .bold()
                    .font(.title2)
                Button {
                    print("foi")
                } label: {
                    GroupBox {
                        HStack {
                            Image(systemName: "calendar")
                            Text("Gerenciar assinaturas")
                        }}
                }
                GroupBox {
                Button {
                    print("foi")
                } label: {
                    HStack {
                        Image(systemName: "pencil.and.ellipsis.rectangle")
                        Text("Redefinir Senha")
                    }}}
                
                GroupBox {
                    Button {
                        print("foi")
                    } label: {
                        HStack {
                            Image(systemName: "apple.logo")
                            Text("Verificar a cobertura")
                        }}}
                MeusServicos()
            }
            .padding(.trailing, 96)
            
        }
        
    }
    
}

struct MeusServicos: View {
    var body: some View {
        Text("Meus serviços")
            .font(.title2)
            .bold()
        GroupBox {
            Image(systemName: "cloud")
                .font(.system(size: 30))
            Text("iCloud")
                .font(.headline)
            Text("0 de 5GB usados")
                .font(.caption)
        }
    }
}
struct FerramentasSuporte_Previews: PreviewProvider {
    static var previews: some View {
        FerramentasSuporte()
    }
}
