//
//  FerramentasSuporte.swift
//  Support
//
//  Created by Maria Vitória de Santana Gabriel on 14/08/23.
//

import SwiftUI

struct FerramentasSuporte: View {
    var body: some View {
        VStack (alignment: .leading){
            Text("Ferramentas de suporte")
                .bold()
                .font(.title2)
                .tint(.black)
            Button {
                print("oi")
            } label: {
                HStack {
                    Image(systemName: "calendar.badge.plus")
                    Text("Gerenciar assinaturas")
                    Spacer()
                }
                .frame(width:350, height: 50)
                .background(Color.gray)
                
                .cornerRadius(10)
            }
            
            Button {
                print("oi")
            } label: {
                    HStack {
                        Image(systemName: "rectangle.and.pencil.and.ellipsis")
                        Text("Redefinir a senha")
                        Spacer()
                    }
                    .frame(width:350, height: 50)
                    .background(Color.gray)
                    
                    .cornerRadius(10)
                }
            }
            Button {
                print("oi")
            } label: {
                HStack {
                    Image(systemName: "apple.logo")
                    Text("Verificar a cobertura")
                    Spacer()
                }
                .frame(width:350, height: 50)
                .background(Color.gray)
                
                .cornerRadius(10)
            }
            
        }
    }
    
//}

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
