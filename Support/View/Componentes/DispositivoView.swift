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


struct DispositivoSheetView: View {
    var dispositivos: [Dispositivo]
    @State var sheetDispositivo = false
    
    var body: some View {
        Button  {
            sheetDispositivo.toggle()
        } label: {
            HStack {
                Text("Meus dispositivos")
                    .bold()
                    .font(.title2)
                    .tint(.black)
                Image(systemName: "greaterthan")
                    .tint(.black)
            }
//            .padding(.trailing, 150)
        }.sheet(isPresented: $sheetDispositivo) {
            NavigationStack {
                VStack {
                    List(dispositivos) { dispositivo in
                        HStack {
                            Image(dispositivo.imagem)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 50, height: 50)
                            VStack (alignment: .leading){
                                Text(dispositivo.nome)
                                Text(dispositivo.descricao)
                            }
                        }
                    }
                    .listStyle(GroupedListStyle())
                    
                }.navigationTitle("Meus dispositivos")
            }
        }
                
    }
}

//struct MeusDispositivos_Previews: PreviewProvider {
//    static var previews: some View {
//        MeusDispositivos((imagem: "iphone", nome: "gi boni", descricao: "Este dispositivo", topicos: ["oi", "oi"]))
//    }
//}
