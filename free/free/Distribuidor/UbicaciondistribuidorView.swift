//
//  UbicaciondistribuidorView.swift
//  free
//
//  Created by Owner on 28/10/23.
//
import SwiftUI

struct UbicacionDistribuidorView: View {
    @State private var selectedGasolinera = "Gasolinera 1"
    @State private var departamento = "San Salvador"
    @State private var municipio = "San Salvador Centro"
    @State private var distrito = "San Salvador"
    @State private var calle = ""
    @State private var puntoDeReferencia = ""

    let gasolineras = ["Seleccione", "Texaco", "Puma", "Uno"]
    let departamentos = ["Seleccione", "San Salvador", "La Libertad", "Santa Ana"]
    let municipios = ["Seleccione", "San Salvador Centro", "Santa Tecla", "Soyapango"]
    let distritos = ["Seleccione", "Mejicanos", "San Salvador", "Soyapango"]

    var body: some View {
        ZStack {
            Color.black
                .frame(maxWidth: .infinity)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Text("Detallar Ubicación")
                    .font(.largeTitle)
                    .padding(.top, -30)
                    .foregroundColor(.white)

                Image("mygas")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 150)
                    .clipShape(Circle())
                    .padding(.bottom, 20)
                VStack {
                    TextField("Direccion", text: $calle)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .frame(width: 340)
                        .padding(5)
                    TextField("Punto de Referencia", text: $puntoDeReferencia)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .frame(width: 340)
                        .padding(5)
                    Picker("Gasolinera", selection: $selectedGasolinera) {
                        ForEach(gasolineras, id: \.self) {
                            Text($0)
                        }
                    }
                    .pickerStyle(MenuPickerStyle())
                    .border(Color.black, width: 1)
                    Picker("Departamento", selection: $departamento) {
                        ForEach(departamentos, id: \.self) {
                            Text($0)
                        }
                    }
                    .pickerStyle(MenuPickerStyle())
                    .border(Color.black, width: 2)
                    Picker("Municipio", selection: $municipio) {
                        ForEach(municipios, id: \.self) {
                            Text($0)
                        }
                    }
                    .pickerStyle(MenuPickerStyle())
                    .border(Color.black, width: 2)
                    Picker("Distrito", selection: $distrito) {
                        ForEach(distritos, id: \.self) {
                            Text($0)
                        }
                    }
                    .pickerStyle(MenuPickerStyle())
                    .border(Color.black, width: 2)
                    
                                        Button(action: {
                        // Agregar lógica para guardar la información de ubicación en la base de datos
                        // let ubicacion = UbicacionDistribuidor(gasolinera: selectedGasolinera, departamento: departamento, municipio: municipio, distrito: distrito, calle: calle, puntoDeReferencia: puntoDeReferencia)
                        // Aquí deberías agregar el código para guardar la ubicación en tu base de datos.
                    }) {
                        Text("Guardar")
                            .foregroundColor(.white)
                            .frame(minWidth: 0, maxWidth: .infinity)
                            .padding()
                            .background(Color.blue)
                            .cornerRadius(10)
                    }
                    .padding(10)
                    
                }
                .padding(1)
                .background(Color.white)
            }
        }
    }
}

struct UbicacionDistribuidorView_Previews: PreviewProvider {
    static var previews: some View {
        UbicacionDistribuidorView()
    }
}
