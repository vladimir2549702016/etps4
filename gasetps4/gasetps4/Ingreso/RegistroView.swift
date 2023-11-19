//
//  RegistroView.swift
//  gasetps4
//
//  Created by Owner on 17/11/23.
//

import SwiftUI

struct RegistroView: View {
    @State private var nombre = ""
    @State private var apellido = ""
    @State private var email = ""
    @State private var codigo = ""
    
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Text("Registro")
                    .font(.largeTitle)
                    .padding(.top, 0)
                    .colorInvert()
                Image("mygas")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 150)
                    .clipShape(Circle())
                    .padding(.bottom, 30)
                TextField("Nombre", text: $nombre)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                TextField("Apellido", text: $apellido)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                TextField("Email", text: $email)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                TextField("Código", text: $codigo)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                Button(action: {
                    print("Nombre: \(nombre)")
                    print("Apellido: \(apellido)")
                    print("Email: \(email)")
                    print("Código: \(codigo)")
                }) {
                    Text("Agregar")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .padding()
                        .background(.green)
                        .cornerRadius(10)
                }
                .padding()
            }
        }
    }
}

struct RegistroView_Previews: PreviewProvider {
    static var previews: some View {
        RegistroView()
    }
}
