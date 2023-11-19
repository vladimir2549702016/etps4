//
//  ContentView.swift
//  gasetps4
//
//  Created by Owner on 17/11/23.
//

import SwiftUI

struct HomeClienteView: View {
    @State private var isPreciosLinkActive = false
    @State private var isSucursalLinkActive = false
    @State private var isOfertasLinkActive = false
    @State private var showLoginView = false

    var body: some View {
        NavigationView {
            ZStack {
                Color.black
                    .edgesIgnoringSafeArea(.all)

                VStack {
                    HStack {
                        Text("MyGas")
                            .font(.title)
                            .padding(.leading)
                            .colorInvert()
                        Spacer()
                        Button(action: {
                        }) {
                            HStack {
                                Text("Iniciar sesión")
                                    .font(.subheadline)
                                Image(systemName: "arrow.right.circle")
                            }
                            .padding()
                            .onTapGesture {
                                showLoginView = true
                            }
                            .sheet(isPresented: $showLoginView) {
                                LoginView()
                            }
                        }
                    }
                    .padding(.bottom, 60)

                    Image("mygas")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 150, height: 150)
                        .clipShape(Circle())
                        .padding(.bottom, 40)

                    VStack {
                        NavigationLink(destination: PreciosClienteView(), isActive: $isPreciosLinkActive) {
                            EmptyView()
                        }
                        Button(action: {
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
