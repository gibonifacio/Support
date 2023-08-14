//
//  MeusDispositivos.swift
//  Support
//
//  Created by Maria Vitória de Santana Gabriel on 14/08/23.
//

import SwiftUI

struct MeusDispositivos: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Meus dispositivos")
                .bold()
                .font(.title2)
            HStack {
                
                GroupBox {
                    Image(systemName: "iphone")
                        
                    Text("maria vitória")
                        .font(.headline)
                        .padding(.top, 1.0)
                        
                        
                        
                    Text("Este dispositivo")
                        .font(.caption)
                    
                }
                GroupBox{
                    Image(systemName: "macbook.and.iphone")
                    Text("Mackbook Pro...")
                        .font(.headline)
                        .padding(.top, 1.0)
                    Text("Este dispositivo")
                        .font(.caption)
                    
                }
            }

        }
        .padding(.trailing, 50)
    }
}

struct MeusDispositivos_Previews: PreviewProvider {
    static var previews: some View {
        MeusDispositivos()
    }
}
