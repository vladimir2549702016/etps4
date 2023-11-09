//
//  SucursalesclienteView.swift
//  free
//
//  Created by Owner on 28/10/23.
//

import SwiftUI

struct Sucursal: Identifiable {
    var id: Int
    var nombre: String
    var direccion: String
}

struct SucursalesClienteView: View {
    // Simulación de datos de sucursales, reemplaza con tus datos reales de la base de datos
    let sucursales: [Sucursal] = [
        Sucursal(id: 1, nombre: "Sucursal 1", direccion: "Calle 1, Ciudad 1"),
        Sucursal(id: 2, nombre: "Sucursal 2", direccion: "Calle 2, Ciudad 2"),
        Sucursal(id: 3, nombre: "Sucursal 3", direccion: "Calle 3, Ciudad 3"),
        Sucursal(id: 4, nombre: "Sucursal 4", direccion: "Calle 4, Ciudad 4"),
        Sucursal(id: 5, nombre: "Sucursal 5", direccion: "Calle 5, Ciudad 5"),
    ]
    
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)

            VStack {
                Text("Gasolineras")
                    .font(.largeTitle)
                    .padding(.top, 0)
                    .colorInvert()
                Image("mygas")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 150)
                    .clipShape(Circle())
                    .padding(.bottom, 30) // Mueve la imagen hacia arriba
                List(sucursales) { sucursal in
                    NavigationLink(destination: DetalleSucursalView(sucursal: sucursal)) {
                        VStack(alignment: .leading) {
                            Text(sucursal.nombre)
                                .font(.headline)
                            Text(sucursal.direccion)
                                .font(.subheadline)
                                .foregroundColor(.black)
                        }
                    }
                }
            }
        }
    }
}

struct DetalleSucursalView: View {
    let sucursal: Sucursal
    
    var body: some View {
        VStack {
            Text("Nombre: \(sucursal.nombre)")
                .font(.headline)
            Text("Dirección: \(sucursal.direccion)")
                .font(.subheadline)
                .foregroundColor(.gray)
        }
        .navigationBarTitle(sucursal.nombre)
    }
}

struct SucursalesClienteView_Previews: PreviewProvider {
    static var previews: some View {
        SucursalesClienteView()
    }
}
