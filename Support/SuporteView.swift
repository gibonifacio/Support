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

    var body: some View {
        NavigationView {
            VStack {
                MeusDispositivos()
                    .navigationTitle("Suporte")
                    .searchable(text: $searchText, prompt: "Conte o que está acontecendo")
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
                            }
                            
                            .searchable(text: $searchText, prompt: "Conte o que está acontecendo")
                        }
                    }
                FerramentasSuporte()

            }
        }
    }
    
}
struct SuporteView_Previews: PreviewProvider {
    static var previews: some View {
        SuporteView()
    }
}
