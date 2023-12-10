//
//  OfertasdistribuidorView.swift
//  free
//
//  Created by Owner on 28/10/23.
//
import SwiftUI

struct OfertasDistribuidorView: View {
    @State private var oferta: String = ""
    @State private var descripcionOferta: String = ""
    @State private var fechaInicio: Date = Date()
    @State private var fechaFin: Date = Date()

    func guardarEnBaseDeDatos() {
        // Aquí deberías implementar la lógica para guardar en tu base de datos.
        // Por ahora, simplemente imprimiremos los valores.
        print("Guardando en la base de datos...")
        print("Oferta: \(oferta)")
        print("Descripción: \(descripcionOferta)")
        print("Fecha de inicio: \(fechaInicio)")
        print("Fecha de fin: \(fechaFin)")
    }

    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            VStack {
                Text("Ofertas del Distribuidor")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .padding(.bottom, 20)
                Image("mygas")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 150)
                    .clipShape(Circle())
                    .padding(.bottom, 20)

                VStack(spacing: 10) {
                    TextField("Oferta", text: $oferta)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    TextField("Descripción de la oferta", text: $descripcionOferta)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    DatePicker("Fecha de inicio", selection: $fechaInicio, displayedComponents: .date)
                        .datePickerStyle(DefaultDatePickerStyle())
                        .padding()
                    
                    DatePicker("Fecha de fin", selection: $fechaFin, displayedComponents: .date)
                        .datePickerStyle(DefaultDatePickerStyle())
                        .padding()
                    
                    Button(action: {
                        // Llama a la función para guardar en la base de datos
                        guardarEnBaseDeDatos()
                    }) {
                        Text("Confirmar")
                            .foregroundColor(.white)
                            .frame(width: 310)
                            .padding(10)
                            .background(Color.blue)
                            .cornerRadius(10)
                    }
                    .padding()
                }.padding()
                    .background(Color.white)
                    .cornerRadius(10)
            }
        }
    }
}

struct OfertasDistribuidorView_Previews: PreviewProvider {
    static var previews: some View {
        OfertasDistribuidorView()
    }
}
