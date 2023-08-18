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
                    .resizable()
                    .tint(.gray)
                    .frame(width: 10, height:15)
                    .bold()
            }
//            .padding(.trailing, 150)
        }.sheet(isPresented: $sheetDispositivo) {
            NavigationStack {
                VStack (alignment: .leading){
                    ForEach(dispositivos) { dispositivo in
                        HStack {
                            Image(dispositivo.imagem)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 50, height: 50)
                                .padding(.leading, 20)
                            VStack (alignment: .leading){
                                Text(dispositivo.nome)
                                Text(dispositivo.descricao)
                            }
                            
                        }
                        Divider()
                    }
                    Spacer()

                    
                }.navigationTitle("Meus dispositivos")
            }
        }
                
    }
}
