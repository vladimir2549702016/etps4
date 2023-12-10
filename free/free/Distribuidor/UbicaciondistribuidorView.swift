//
//  UbicaciondistribuidorView.swift
//  free
//
//  Created by Owner on 28/10/23.
//
import SwiftUI

struct UbicacionDistribuidorView: View {
    @State private var selectedColonia = "Seleccione"
    @State private var direccion = ""
    @State private var puntoDeReferencia = ""

    let colonias = ["Seleccione Colonia", "Colonia 1", "Colonia 2", "Colonia 3"]
    
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Text("Detallar Ubicación")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .padding(.top, 20)

                Image("mygas")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 150)
                    .clipShape(Circle())
                    .padding(.bottom, 20)

                VStack(spacing: 10) {
                    TextField("Dirección", text: $direccion)
                        .textFieldStyle(RoundedBorderTextFieldStyle())

                    TextField("Punto de Referencia", text: $puntoDeReferencia)
                        .textFieldStyle(RoundedBorderTextFieldStyle())

                    Picker("Colonia", selection: $selectedColonia) {
                        ForEach(colonias, id: \.self) {
                            Text($0)
                        }
                    }
                    .pickerStyle(MenuPickerStyle())

                    Button(action: {
                        guardarEnBaseDeDatos()
                    }) {
                        Text("Guardar")
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.blue)
                            .cornerRadius(10)
                    }
                    .padding(.top, 20)
                }
                .padding()
                .background(Color.white)
                .cornerRadius(10)
            }
            .padding()
        }
    }

    private func guardarEnBaseDeDatos() {
        // Implementa la lógica para guardar los datos en la base de datos aquí
        // Por ahora, simplemente imprime los valores seleccionados.
        print("Colonia: \(selectedColonia)")
        print("Dirección: \(direccion)")
        print("Punto de Referencia: \(puntoDeReferencia)")
    }
}

struct UbicacionDistribuidorView_Previews: PreviewProvider {
    static var previews: some View {
        UbicacionDistribuidorView()
    }
}
