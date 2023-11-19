//
//  LoginView.swift
//  gasetps4
//
//  Created by Owner on 17/11/23.
//

import SwiftUI

struct LoginView: View {
    @State private var username = ""
    @State private var password = ""
    @State private var isLoggedIn = false

    var body: some View {
        NavigationView {
            NavigationLink(
                destination: HomeDistribuidorView(),
                isActive: $isLoggedIn,
                label: {
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
                                .foregroundColor(.white)
                            TextField("Nombre de usuario", text: $username)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                .padding()

                            SecureField("Contraseña", text: $password)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                .padding()

                            Button(action: {
                                if username == "Distribuidor" && password == "Distribuidor" {
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
            )
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

