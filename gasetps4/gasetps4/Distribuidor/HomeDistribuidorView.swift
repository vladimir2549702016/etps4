//
//  HomeDistribuidorView.swift
//  gasetps4
//
//  Created by Owner on 17/11/23.
//

import SwiftUI

struct HomeDistribuidorView: View {
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
                        NavigationLink(destination: PrecioDistribuidorView(), isActive: $isPreciosLinkActive) {
                            EmptyView()
                        }
                        Button(action: {
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

                        NavigationLink(destination: SucursalesClienteView(), isActive: $isSucursalLinkActive) {
                            EmptyView()
                        }
                        Button(action: {
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

                        NavigationLink(destination: OfertaDistribuidorView(), isActive: $isOfertasLinkActive) {
                            EmptyView()
                        }
                        Button(action: {
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

struct HomeDistribuidorView_Previews: PreviewProvider {
    static var previews: some View {
        HomeDistribuidorView()
    }
}
