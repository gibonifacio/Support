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
                Button (action: {
                    isOn.toggle()
                }, label: {
                    ZStack {
                        Rectangle()
                        HStack {
                            Text("Conte o que está acontecendo")
                            Image(systemName: "heart")
                        }
                        
                    }
                    .sheet(isPresented: $isOn) {
                        
                    }
                    
                })
                    .navigationTitle("Suporte")
                    
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
