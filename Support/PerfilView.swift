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
    var body: some View {
        NavigationStack {
            VStack {
                VStack {
                    ZStack {
                        Circle()
                            .frame(width: 30, height: 30)
                        Text("GB")
                    }
                    Text("Giovanna Bonifacio")
                    Text("oi")
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

