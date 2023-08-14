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
            }
        }

    }
    
}

struct FerramentasSuporte_Previews: PreviewProvider {
    static var previews: some View {
        FerramentasSuporte()
    }
}
