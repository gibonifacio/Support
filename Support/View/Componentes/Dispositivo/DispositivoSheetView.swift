//
//  DispositivoSheetView.swift
//  Support
//
//  Created by Giovanna Bonifacho on 16/08/23.
//

import Foundation
import SwiftUI


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
