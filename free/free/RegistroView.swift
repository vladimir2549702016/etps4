//
//  RegistroView.swift
//  free
//
//  Created by Owner on 21/10/23.
//

import SwiftUI

struct RegistroView: View {
    @State private var nombre = ""
    @State private var apellido = ""
    @State private var email = ""
    @State private var codigo = ""
    
    var body: some View {
        ZStack {
            Color.gray
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Text("Registro")
                    .font(.largeTitle)
                    .padding(.top, -90)
                
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
                    // Agregar lógica para procesar los datos del formulario aquí
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
