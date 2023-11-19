//
//  OfertaDistribuidorView.swift
//  gasetps4
//
//  Created by Owner on 17/11/23.
//

import SwiftUI

struct OfertaDistribuidorView: View {
    @State private var opcionesSeleccionadas: [Opcion] = [
        Opcion(nombre: "Combustible al Costo", seleccionada: false),
        Opcion(nombre: "Acumulación de Puntos", seleccionada: false),
        Opcion(nombre: "Descuento con Tarjeta de Crédito", seleccionada: false),
        Opcion(nombre: "Bomba Cash", seleccionada: false),
        Opcion(nombre: "Promoción Navideña", seleccionada: false)
    ]

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
                List(0..<opcionesSeleccionadas.count, id: \.self) { index in
                    Toggle(isOn: $opcionesSeleccionadas[index].seleccionada) {
                        Text(opcionesSeleccionadas[index].nombre)
                            .foregroundColor(.black)
                    }
                }
                .listStyle(GroupedListStyle())
                .padding(5)
                Button(action: {
                    for opcion in opcionesSeleccionadas {
                        if opcion.seleccionada {
                            let opcionSeleccionada = opcion.nombre
                            print("Opción seleccionada: \(opcionSeleccionada)")
                        }
                    }
                }) {
                    Text("Confirmar")
                        .foregroundColor(.white)
                        .frame(width: 310)
                        .padding(10)
                        .background(Color.blue)
                        .cornerRadius(10)
                }
                .padding()
            }
        }
    }
}

struct OfertasDistribuidorView_Previews: PreviewProvider {
    static var previews: some View {
        OfertaDistribuidorView()
    }
}

struct Opcion: Identifiable {
    let id = UUID()
    let nombre: String
    var seleccionada: Bool
}
