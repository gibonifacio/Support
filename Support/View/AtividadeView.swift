//
//  AtividadeView.swift
//  Support
//
//  Created by Giovanna Bonifacho on 14/08/23.
//

import Foundation
import SwiftUI

struct AtividadeView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Image(systemName: "clock.fill")
                    .font(.system(size: 45))
                    .foregroundColor(.gray)
                    .padding()
                Text("Nenhuma atividade de suporte nos últimos 90 dias")
                    .font(.system(size: 23))
                    .multilineTextAlignment(.center)
                    .bold()
                Text("Reservas, chamadas e bate-papos passados e futuros com o Suporte da Apple serão exibidos aqui")
                    .frame(width: 330)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.gray)
                    .font(.system(size: 15))
            }
            .navigationTitle("Atividade recente")
        }
        .background(.blue)
    }
}


struct AtividadeView_Previews: PreviewProvider {
    static var previews: some View {
        AtividadeView()
    }
}
