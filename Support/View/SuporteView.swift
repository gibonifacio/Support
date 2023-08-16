//
//  SuporteView.swift
//  Support
//
//  Created by Giovanna Bonifacho on 14/08/23.
//

import Foundation
import SwiftUI

struct SuporteView: View {
    @State private var searchText = ""
    @State var isOn = false
    @State var isPresented = false
    @EnvironmentObject var dispostivoFetcher: DispositivoFetcher
    @State var sheetDispositivo = false
    var dispositivos: [Dispositivo]
    
    
    @EnvironmentObject var servicoFetcher: ServicoFetcher
    var servicos: [Servico]
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack (alignment: .leading) {
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
                                    .tint(.gray)
                                Spacer()
                                Image(systemName: "heart")
                            }
                            .padding()
                        }
                        //                    .frame(width:25)
                        .sheet(isPresented: $isPresented) {
                            TextSheetView()
                                .presentationBackground(.white)
                        }
                        
                    })
                    Divider()
                    DispositivoSheetView(dispositivos: dispositivos)
                    
                        .padding(.leading, 20)
                    ScrollView(.horizontal) {
                        if let dispositivos = dispostivoFetcher.dispositivos {
                            
                            DispositivoView(dispositivos: dispositivos)
                                .padding(.leading, 20)
                            
                                .navigationTitle("Suporte")
                                .toolbar {
                                    ToolbarItem {
                                        Button {
                                            isOn.toggle()
                                        } label: {
                                            ZStack {
                                                Circle()
                                                    .frame(width: 37, height: 37)
                                                    .foregroundColor(.gray)
                                                Text("GB")
                                                    .foregroundColor(.white)
                                                    .font(.system(size: 16))
                                                    .bold()
                                            }
                                        }
                                        .sheet(isPresented: $isOn) {
                                            PerfilView()
                                                .presentationBackground(.white)
                                        }
                                        
                                        
                                        
                                    }
                                }
                            
                            
                        }
                    }
                    Divider()
                    FerramentasSuporte()
                        .padding(.leading, 20)
                    Divider()
                    ServicoSheetView(servicos: servicos)
                    
                        .padding(.leading, 20)
                    ScrollView(.horizontal) {
                        if let servicos = servicoFetcher.servicos {
                            
                            ServicoView(servicos: servicos)
                                .padding(.leading, 20)
                        }
                    }
                    
                    Spacer()
                    
                    
                    
                    //                FerramentasSuporte()
                    
                }
            }
        }
    }
}
    
    
//struct SuporteView_Previews: PreviewProvider {
//    static var previews: some View {
//        SuporteView()
//    }
//}
