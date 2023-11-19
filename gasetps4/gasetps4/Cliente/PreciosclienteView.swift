//
//  PreciosclienteView.swift
//  gasetps4
//
//  Created by Owner on 17/11/23.
//

import SwiftUI

struct PreciosClienteView: View {
    @State private var precioEspecial = "3.50"
    @State private var precioRegular = "3.00"
    @State private var precioDiesel = "2.80"
    
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            VStack {
                Text("Referencia de Precios")
                    .font(.largeTitle)
                    .padding(.top, 0)
                    .colorInvert()
                
                Image("mygas")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(.top, 0)
                    .frame(width: 200, height: 200)
                    .clipShape(Circle())
                
                Text("Combustible Especial: $\(precioEspecial)")
                    .font(.headline)
                    .padding()
                    .colorInvert()
                
                Text("Combustible Regular: $\(precioRegular)")
                    .font(.headline)
                    .padding()
                    .colorInvert()
                
                Text("Combustible Diesel: $\(precioDiesel)")
                    .font(.headline)
                    .padding()
                    .colorInvert()
                
            }
        }
    }
}



struct PreciosClienteView_Previews: PreviewProvider {
    static var previews: some View {
        PreciosClienteView()
    }
}
