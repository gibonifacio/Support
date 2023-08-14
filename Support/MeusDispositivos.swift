//
//  MeusDispositivos.swift
//  Support
//
//  Created by Maria Vitória de Santana Gabriel on 14/08/23.
//

import SwiftUI

struct MeusDispositivos: View {
    @State var IphoneView: Bool = false

    var body: some View {
        VStack(alignment: .leading) {
            Text("Meus dispositivos")
                .bold()
                .font(.title2)
            HStack {
                Button {
                    IphoneView.toggle()
                } label: {
                    ZStack {
                        Rectangle()
                            .foregroundColor(Color("AccentColor"))
                            .frame(width: 160, height: 150)
                            .cornerRadius(10)
                        VStack {
                            Image("iphone")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 36)
                            
                            Text("maria vitória")
                                .font(.system(size: 24))
                                .bold()
                            
                            
                            Text("Este dispositivo")
                        }
                    }
                    
                }
                GroupBox{
                    Image("mackbook")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 96)
                        
                    Text("Mackbook")
                        .font(.system(size: 24))
                        .bold()
                    Text("Este dispositivo")
                    
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
