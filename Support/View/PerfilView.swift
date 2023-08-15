//
//  PerfilView.swift
//  Support
//
//  Created by Giovanna Bonifacho on 14/08/23.
//

import Foundation
import SwiftUI

struct PerfilView: View {
    @Environment(\.dismiss) var dismiss
    @State var pickerSelection: String = ""
    var pickerOptions: [String] = ["Austrália", "Brasil", "Cuba", "México"]
    
    var body: some View {
        NavigationStack {
            VStack {
                VStack {
                    ZStack {
                        Circle()
                            .frame(width: 90, height: 90)
                            .foregroundColor(.gray)
                        Text("GB")
                            .foregroundColor(.white)
                            .font(.system(size: 36))
                            .bold()
                    }
                    Text("Giovanna Bonifacio")
                        .font(.title)
                        .bold()
                    Text("bonifaciocgiovanna@gmail.com")
                        .foregroundColor(.gray)
                    
                    Picker("REGIÃO", selection: $pickerSelection) {
                        ForEach(pickerOptions, id: \.self) { pais in
                            Text(pais)
                        }
                    }.pickerStyle(.navigationLink)
                }
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        dismiss()
                    } label: {
                         Text("OK")
                    }
                }
            }
        }
    }
}

struct PerfilView_Previews: PreviewProvider {
    static var previews: some View {
        PerfilView()
    }
}
