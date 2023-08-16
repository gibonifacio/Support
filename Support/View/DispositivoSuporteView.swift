//
//  IphoneView.swift
//  Support
//
//  Created by Maria Vitória de Santana Gabriel on 14/08/23.
//

import SwiftUI

struct DispositivoSuporteView: View {
//    var dispositivos: [Dispositivo]
    var dispositivo: Dispositivo
    
    @State var isPresented = false
    
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                Image(dispositivo.imagem)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                Text(dispositivo.nome).font(.title2)
                Text(dispositivo.descricao)
                    .font(.callout)
                    .multilineTextAlignment(.center)
                Button {
                    print("oi")
                } label: {
                    Text("Informações do dispositivo")
                }
                Button (action: {
                    isPresented.toggle()
                }, label: {
                    ZStack {
                        Rectangle()
                            .frame(width: 400, height: 40)
                            .foregroundColor(Color("atividadeFundo"))
                            .cornerRadius(10)
                        HStack {
                            Text("Conte o que está acontecendo")
                            Spacer()
                            Image(systemName: "heart")
                        }
                        .padding()
                    }
                    .frame(width: 400)
                    .sheet(isPresented: $isPresented) {
                        TextSheetSuportView(dispositivo: dispositivo)
                            .presentationBackground(.white)
                    }
                    
                })
                

                List(dispositivo.topicos) { topico in
                    HStack {
                        Image(topico.imagem)
                        Text(topico.nome)
                    }
                }
                
            }
        }
        }
    }


//struct Topicos: View {
//    var body: some View {
//        VStack(alignment: .leading) {
//            Text("Tópicos de suporte")
//                .font(.title2)
//                List {
//                    Text("Reparo e danos físicos")
//                    Text("Desempenho do dispositivo")
//                    Text("Assinatura e compras")
//                    Text("Compras da Apple Store")
//                    Text("Senhas e segurança")
//                    Text("Atualização, backup e restauração")
//                }
//
//        }
//        .padding()
//    }
//
////    struct IphoneView_Previews: PreviewProvider {
////        static var previews: some View {
////            IphoneView()
////        }
////    }
////}
