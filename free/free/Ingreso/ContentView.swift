//
//  ContentView.swift
//  free
//
//  Created by Owner on 21/10/23.
//

import SwiftUI

struct ContentView: View {
    @State private var username = ""
    @State private var password = ""
    @State private var isLoggedIn = false

    var body: some View {
        NavigationView {
            if isLoggedIn {
                // Vista de inicio de sesión exitosa para el distribuidor o el cliente
                if username == "Distribuidor" {
                    HomedistribuidorView()
                } else if username == "Cliente" {
                    HomeClienteView()
                }
            } else {
                ZStack {
                    Color.black
                        .edgesIgnoringSafeArea(.all)
                    VStack {
                        Image("mygas")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .padding(.top, 0)
                            .frame(width: 200, height: 200)
                            .clipShape(Circle())
                        
                        Text("Iniciar Sesión")
                            .font(.title)
                            .padding()
                            .colorInvert()
                        TextField("Nombre de usuario", text: $username)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .padding()
                        
                        SecureField("Contraseña", text: $password)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .padding()

                        Button(action: {
                            // Verifica el inicio de sesión y establece la variable isLoggedIn en verdadero
                            if username == password {
                                isLoggedIn = true
                            }
                        }) {
                            Text("Iniciar Sesión")
                                .font(.headline)
                                .foregroundColor(.white)
                                .frame(minWidth: 0, maxWidth: .infinity)
                                .padding()
                                .background(.blue)
                                .cornerRadius(10)
                        }
                        .padding()

                        NavigationLink(destination: RegistroView()) {
                            Text("Registrarse")
                                .font(.headline)
                                .foregroundColor(.blue)
                        }
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


