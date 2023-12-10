//
//  RegistroView.swift
//  free
//
//  Created by Owner on 21/10/23.
//

import SwiftUI

struct RegistroView: View {
    @State private var marca = ""
    @State private var referencia = ""
    @State private var email = ""
    @State private var codigo = ""
    @State private var selectedGasolinera = "Gasolinera Texaco"

    let gasolineras = ["Gasolinera Texaco", "Gasolinera Uno", "Gasolinera Puma", "Gasolinera DLC"]

    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 20) {
                Text("Registro")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .padding(.top, 20)
                Image("mygas")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 150)
                    .clipShape(Circle())
                    .padding(.bottom, 30)
                TextField("Marca", text: $marca)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .cornerRadius(8)
                TextField("Referencia", text: $referencia)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .cornerRadius(8)
                TextField("Email", text: $email)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .cornerRadius(8)
                TextField("Contraseña", text: $codigo)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .cornerRadius(8)

                Picker("Gasolinera", selection: $selectedGasolinera) {
                    ForEach(gasolineras, id: \.self) {
                        Text($0)
                    }
                }
                .pickerStyle(MenuPickerStyle())
                .frame(width: 370, height: 35)
                .background(Color.white)
                .cornerRadius(8)
                

                Button(action: {
                    // Agregar lógica para procesar los datos del formulario aquí
                    print("Nombre: \(marca)")
                    print("Apellido: \(referencia)")
                    print("Email: \(email)")
                    print("Código: \(codigo)")
                    print("Gasolinera seleccionada: \(selectedGasolinera)")
                }) {
                    Text("Agregar")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.green)
                        .cornerRadius(10)
                }
                .background(Color.white.opacity(0.1))
            }
        }
    }
}

struct RegistroView_Previews: PreviewProvider {
    static var previews: some View {
        RegistroView()
    }
}
