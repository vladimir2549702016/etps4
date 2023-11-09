//
//  HomedistribuidorView.swift
//  free
//
//  Created by Owner on 28/10/23.
//

import SwiftUI

struct HomedistribuidorView: View {
    @State private var isPreciosLinkActive = false
    @State private var isSucursalLinkActive = false
    @State private var isOfertasLinkActive = false

    var body: some View {
        NavigationView {
            ZStack {
                Color.black
                    .edgesIgnoringSafeArea(.all)

                VStack {
                    HStack {
                        Text("Distribuidor")
                            .font(.title)
                            .padding(.leading)
                            .colorInvert()
                        Spacer()
                        Button(action: {
                            // Agrega aquí la lógica para cerrar sesión
                        }) {
                            HStack {
                                Text("Cerrar Sesión")
                                    .font(.subheadline)
                                Image(systemName: "arrow.right.circle")
                            }
                            .padding()
                        }
                    }
                    .padding(.bottom, 50)

                    Image("mygas")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 150, height: 150)
                        .clipShape(Circle())
                        .padding(.bottom, 50)

                    VStack {
                        NavigationLink(destination: PreciosDistribuidorView(), isActive: $isPreciosLinkActive) {
                            EmptyView()
                        }
                        Button(action: {
                            // Agrega aquí la lógica para la vista "Precios"
                            isPreciosLinkActive = true
                        }) {
                            HStack {
                                Text("Modificar Precios")
                                    .font(.headline)
                                Image(systemName: "dollarsign.square")
                            }
                            .foregroundColor(.white)
                            .frame(minWidth: 0, maxWidth: .infinity)
                            .padding()
                            .background(Color.blue)
                            .cornerRadius(10)
                        }
                        .padding()

                        NavigationLink(destination: UbicacionDistribuidorView(), isActive: $isSucursalLinkActive) {
                            EmptyView()
                        }
                        Button(action: {
                            // Agrega aquí la lógica para la vista "Sucursal"
                            isSucursalLinkActive = true
                        }) {
                            HStack {
                                Text("Modificar Ubicacion")
                                    .font(.headline)
                                Image(systemName: "mappin.and.ellipse")
                            }
                            .foregroundColor(.white)
                            .frame(minWidth: 0, maxWidth: .infinity)
                            .padding()
                            .background(Color.orange)
                            .cornerRadius(10)
                        }
                        .padding()

                        NavigationLink(destination: OfertasDistribuidorView(), isActive: $isOfertasLinkActive) {
                            EmptyView()
                        }
                        Button(action: {
                            // Agrega aquí la lógica para la vista "Ofertas"
                            isOfertasLinkActive = true
                        }) {
                            HStack {
                                Text("Modificar Ofertas")
                                    .font(.headline)
                                Image(systemName: "tag")
                            }
                            .foregroundColor(.white)
                            .frame(minWidth: 0, maxWidth: .infinity)
                            .padding()
                            .background(Color.green)
                            .cornerRadius(10)
                        }
                        .padding()
                    }
                }
            }
        }
    }
}

struct HomedistribuidorView_Previews: PreviewProvider {
    static var previews: some View {
        HomedistribuidorView()
    }
}
