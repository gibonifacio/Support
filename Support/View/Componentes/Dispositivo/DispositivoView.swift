//
//  MeusDispositivos.swift
//  Support
//
//  Created by Maria Vitória de Santana Gabriel on 14/08/23.
//

import SwiftUI

struct DispositivoView: View {
    
    @State var IphoneView: Bool = false
    
    var dispositivos: [Dispositivo]
    

    var body: some View {

            VStack(alignment: .leading) {
                HStack {
                    ForEach(dispositivos) { dispositivo in
                        NavigationLink {
                            DispositivoSuporteView(dispositivo: dispositivo)
                        } label: {
                            
                                ZStack {
                                    Rectangle()
                                        .foregroundColor(Color("cinza"))
                                        .frame(width: 160, height: 150)
                                        .cornerRadius(10)
                                    VStack {
                                        Image(dispositivo.imagem)
                                            .resizable()
                                            .scaledToFit()
                                            .frame(height: 70)
                                        
                                        Text(dispositivo.nome)
                                            .font(.system(size: 16))
                                            .bold()
                                            .tint(.black)
                                        
                                        
                                        Text(dispositivo.descricao)
                                            .tint(.gray)
                                            .font(.system(size: 12))
                                    }
                                }
                            
                            
                        }
                        
                    }
                }
            }

    }
}



//struct MeusDispositivos_Previews: PreviewProvider {
//    static var previews: some View {
//        MeusDispositivos((imagem: "iphone", nome: "gi boni", descricao: "Este dispositivo", topicos: ["oi", "oi"]))
//    }
//}
