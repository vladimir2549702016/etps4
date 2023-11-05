//
//  HomeclienteView.swift
//  free
//
//  Created by Owner on 28/10/23.
//

import SwiftUI

struct HomeClienteView: View {
    @State private var isPreciosLinkActive = false
    @State private var isSucursalLinkActive = false
    @State private var isOfertasLinkActive = false

    var body: some View {
        NavigationView {
            ZStack {
                Color.gray
                    .edgesIgnoringSafeArea(.all)

                VStack {
                    HStack {
                        Text("Cliente")
                            .font(.title)
                            .padding(.leading)
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
                    .padding(.top, -80)

                    Image("mygas")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 150, height: 150)
                        .clipShape(Circle())
                        .padding(.bottom, 20)

                    VStack {
                        NavigationLink(destination: PreciosClienteView(), isActive: $isPreciosLinkActive) {
                            EmptyView()
                        }
                        Button(action: {
                            // Agrega aquí la lógica para la vista "Precios"
                            isPreciosLinkActive = true
                        }) {
                            HStack {
                                Text("Precios")
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

                        NavigationLink(destination: SucursalesClienteView(), isActive: $isSucursalLinkActive) {
                            EmptyView()
                        }
                        Button(action: {
                            // Agrega aquí la lógica para la vista "Sucursal"
                            isSucursalLinkActive = true
                        }) {
                            HStack {
                                Text("Sucursal")
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

                        NavigationLink(destination: OfertasclienteView(), isActive: $isOfertasLinkActive) {
                            EmptyView()
                        }
                        Button(action: {
                            // Agrega aquí la lógica para la vista "Ofertas"
                            isOfertasLinkActive = true
                        }) {
                            HStack {
                                Text("Ofertas")
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

struct HomeClienteView_Previews: PreviewProvider {
    static var previews: some View {
        HomeClienteView()
    }
}
