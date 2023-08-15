//
//  MeusDispositivos.swift
//  Support
//
//  Created by Maria Vitória de Santana Gabriel on 14/08/23.
//

import SwiftUI

struct MeusDispositivos: View {
    
    @State var IphoneView: Bool = false
    let dispositivos = [ClasseDispositivos(imagem: "iphone", nome: "gi boni", descricao: "Este dispositivo", topicos: [Topico(nome: "oi", imagem: "oi")]), ClasseDispositivos(imagem: "mackbook", nome: "Mackbook", descricao: "Este dispositivo", topicos: [Topico(nome: "oi", imagem: "oi")])]
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                Text("Meus dispositivos")
                    .bold()
                    .font(.title2)
                HStack {
                    ForEach(dispositivos) { dispositivo in
                        NavigationLink {
                            FerramentasSuporte()
                        } label: {
                            ZStack {
                                Rectangle()
                                    .foregroundColor(Color("cinza"))
                                    .frame(width: 160, height: 160)
                                    .cornerRadius(10)
                                VStack {
                                    Image(dispositivo.imagem)
                                        .resizable()
                                        .scaledToFit()
                                        .frame(height: 60)
                                    
                                    Text(dispositivo.nome)
                                        .font(.system(size: 24))
                                        .bold()
                                    
                                    
                                    Text(dispositivo.descricao)
                                }
                            }
                        }
                        
                    }
                }
            }
        }
    }
}


struct MeusDispositivos_Previews: PreviewProvider {
    static var previews: some View {
        MeusDispositivos()
    }
}
