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
    @State var isPresented = false
    

    var body: some View {
        NavigationView {
            VStack {
                Button (action: {
                    isPresented.toggle()
                }, label: {
                    ZStack {
                        Rectangle()
                            .frame(width: 400, height: 40)
                            .foregroundColor(Color("atividadeFundo"))
                            .cornerRadius(10)
                        HStack {
                            Text("Conte o que está acontecendo")
                            Spacer()
                            Image(systemName: "heart")
                        }
                        .padding()
                    }
                    .frame(width: 400)
                    .sheet(isPresented: $isPresented) {
                        TextSheetView()
                            .presentationBackground(.white)
                    }
                    
                })
                Divider()
                MeusDispositivos()
                
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
//                FerramentasSuporte()

            }
        }
    }
    
}
struct SuporteView_Previews: PreviewProvider {
    static var previews: some View {
        SuporteView()
    }
}
