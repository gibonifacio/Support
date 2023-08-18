//
//  MapaView.swift
//  Support
//
//  Created by Giovanna Bonifacho on 14/08/23.
//

import Foundation
import SwiftUI
import MapKit

struct MapaView: View {
    @State var regiao = MKCoordinateRegion(
        center: CLLocationCoordinate2D (
            latitude: -23.539334, longitude: -46.649086),
        span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))
    var body: some View {
        NavigationStack {
            ZStack {
                Map(coordinateRegion: $regiao)
                VStack {
                    Spacer()
                    HStack{
                        Button  {
                            print("pesquisa")
                        } label: {
                            ZStack {
                                Rectangle()
                                    .frame(width: 40, height: 40)
                                    .cornerRadius(5)
                                    .foregroundColor(Color("atividadeFundo"))
                                Image(systemName: "magnifyingglass")
                                    .foregroundColor(.blue)
                            }
                        }

                        Button  {
                            print("lista")
                        } label: {
                            ZStack {
                                Rectangle()
                                    .frame(width: 280, height: 40)
                                    .cornerRadius(5)

                                    .foregroundColor(Color("atividadeFundo"))
                                HStack {
                                    Image(systemName: "list.bullet")
                                    Text("Mostrar Lista")
                                        
                                }.foregroundColor(.blue)
                            }
                        }

                    }.padding(.bottom, 20)
                }
                
            }.navigationTitle("Locais de Reparo")
                .navigationBarTitleDisplayMode(.inline)

        }
        
    }
}

struct MapaView_Previews: PreviewProvider {
    static var previews: some View {
        MapaView()
    }
}
