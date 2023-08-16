//
//  TextSheetView.swift
//  Support
//
//  Created by Giovanna Bonifacho on 15/08/23.
//

import Foundation
import SwiftUI


struct TextSheetView: View {
    @State var textField: String = ""
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationStack {
            VStack (alignment: .leading){
                Text("Conte o que está acontencendo")
                    .bold()
                    .font(.system(size: 16))
                    .tint(.black)
                TextField("Exemplo: senha esquecida", text: $textField)
                    .background(.white)
                    
                    
                Spacer()
            }

            .padding()
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        
                    } label: {
                         Text("Próximo")
                            .foregroundColor(.gray)
                    }
                }
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        dismiss()
                    } label: {
                        Text("Cancelar")
                    }
                }
            }
            .background(Color("atividadeFundo"))
        }
    }
}


struct TextSheetSuportView: View {
    @State var textField: String = ""
    @Environment(\.dismiss) var dismiss
    var dispositivo: Dispositivo
    
    var body: some View {
        NavigationStack {
            VStack (alignment: .leading){
                Text(dispositivo.nome)
                Text("Conte o que está acontencendo")
                    .bold()
                    .font(.title2)
                TextField("Exemplo: senha esquecida", text: $textField)
                    .background(.white)
                    
                Spacer()
            }

            .padding()
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        
                    } label: {
                         Text("Próximo")
                            .foregroundColor(.gray)
                    }
                }
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        dismiss()
                    } label: {
                        Text("Cancelar")
                    }
                }
            }
            .background(Color("atividadeFundo"))
        }
    }
}



struct TextSheetView_Previews: PreviewProvider {
    static var previews: some View {
        TextSheetView()
    }
}
