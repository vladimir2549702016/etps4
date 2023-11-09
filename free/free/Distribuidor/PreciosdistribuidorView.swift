//
//  PreciosdistribuidorView.swift
//  free
//
//  Created by Owner on 28/10/23.
//

import SwiftUI

struct PreciosDistribuidorView: View {
    @State private var precioEspecial = ""
    @State private var precioRegular = ""
    @State private var precioDiesel = ""

    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            VStack {
                Text("Modificar Precios")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .padding(.bottom, 50)
                Image("mygas")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 150)
                    .clipShape(Circle())
                    .padding(.bottom,20)
                TextField("Especial", text: $precioEspecial)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .keyboardType(.decimalPad)
                    .padding(10)

                TextField("Regular", text: $precioRegular)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .keyboardType(.decimalPad)
                    .padding(10)

                TextField("Diesel", text: $precioDiesel)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .keyboardType(.decimalPad)
                    .padding(10)
                //Button(action: {
                    // Agregar lógica para guardar los datos ingresados
                    //guard let especial = Double(precioEspecial),
                      //    let regular = Double(precioRegular),
                        //  let diesel = Double(precioDiesel) else {
                        // Manejar errores en caso de que la entrada no sea válida
                        //return
                    //}

                    // Aquí puedes guardar los valores en tu base de datos o realizar otras acciones

                //}){
                    Text("Guardar")
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
//}


struct PreciosdistribuidorView_Previews: PreviewProvider {
    static var previews: some View {
        PreciosDistribuidorView()
    }
}
