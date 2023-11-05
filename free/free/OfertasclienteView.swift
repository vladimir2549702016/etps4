//
//  OfertasclienteView.swift
//  free
//
//  Created by Owner on 28/10/23.
//

import SwiftUI

struct Oferta: Identifiable {
    var id: Int
    var nombre: String
    var descripcion: String
}

struct OfertasclienteView: View {
    // Datos de muestra de ofertas
    let ofertas: [Oferta] = [
        Oferta(id: 1, nombre: "Oferta 1", descripcion: "Descripción de la oferta 1"),
        Oferta(id: 2, nombre: "Oferta 2", descripcion: "Descripción de la oferta 2"),
        Oferta(id: 3, nombre: "Oferta 3", descripcion: "Descripción de la oferta 3"),
        Oferta(id: 4, nombre: "Oferta 4", descripcion: "Descripción de la oferta 4"),
        Oferta(id: 5, nombre: "Oferta 5", descripcion: "Descripción de la oferta 5"),
    ]

    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)

            VStack {
                Text("Ofertas")
                    .font(.largeTitle)
                    .padding(.top, -30)
                    .colorInvert()
                Image("mygas")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 150)
                    .clipShape(Circle())
                    .padding(.bottom, 30)

                List(ofertas) { oferta in
                    NavigationLink(destination: DetalleOfertaView(oferta: oferta)) {
                        VStack(alignment: .leading) {
                            Text(oferta.nombre)
                                .font(.headline)
                            Text(oferta.descripcion)
                                .font(.subheadline)
                                .foregroundColor(.black)
                        }
                    }
                }
            }
        }
    }
}

struct DetalleOfertaView: View {
    let oferta: Oferta

    var body: some View {
        VStack {
            Text("Nombre: \(oferta.nombre)")
                .font(.headline)
            Text("Descripción: \(oferta.descripcion)")
                .font(.subheadline)
                .foregroundColor(.gray)
        }
        .navigationBarTitle(oferta.nombre)
    }
}


struct OfertasclienteView_Previews: PreviewProvider {
    static var previews: some View {
        OfertasclienteView()
    }
}
