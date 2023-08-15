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
        VStack {
            Text("Conte o que está acontencendo")
            TextField("Exemplo: senha esquecida", text: $textField)
        }
        .toolbar() {
            ToolbarItem (placement: .navigationBarLeading) {
                Button {
                    dismiss()
                } label: {
                    Text("Cancelar")
                        .foregroundColor(.blue)
                }
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                Button {
                    
                } label: {
                    Text("Próximo")
                }
            }
        }
    }
}
