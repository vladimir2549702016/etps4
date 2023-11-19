//
//  OfertasclienteView.swift
//  gasetps4
//
//  Created by Owner on 17/11/23.
//

import SwiftUI

struct Oferta: Identifiable {
    var id: Int
    var nombre: String
    var descripcion: String
}

struct OfertasclienteView: View {
    let ofertas: [Oferta] = [
        Oferta(id: 1, nombre: "Texaco Tutunichapa", descripcion: "Acumulacion de puntos"),
        Oferta(id: 2, nombre: "Texaco 25 avenida", descripcion: "Acumulacion de puntos"),
        Oferta(id: 3, nombre: "Puma Los Heroes", descripcion: "Acumulacion de puntos"),
        Oferta(id: 4, nombre: "Uno Juan Pablo ll", descripcion: "Autoservicio cash al costo"),
        Oferta(id: 5, nombre: "Uno Los Heroes", descripcion: "Autoservicio"),
    ]

    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)

            VStack {
                Text("Ofertas")
                    .font(.largeTitle)
                    .padding(.top, 0)
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
