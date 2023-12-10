//
//  ContentView.swift
//  free
//
//  Created by Owner on 21/10/23.
//
import SwiftUI

struct ContentView: View {
    @State private var showContinueButton = false
    @State private var goToHome = false

    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)

 /*           Image("mygas")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 250, height: 250)
                .clipShape(Circle())
                .scaleEffect(showContinueButton ? 1.2 : 1.0) // Efecto de escala
                .opacity(0.3)
                .animation(.easeInOut(duration: 4.0)) // Agregar animación a la escala
   */

            VStack {
                Spacer()

                if showContinueButton {
                    Button(action: {
                        withAnimation {
                            goToHome = true
                        }
                    }) {
                        Text("Bienvenido!")
                            .font(.headline)
                            .foregroundColor(.white)
                            .frame(minWidth: 0, maxWidth: .infinity)
                            .padding()
                            .background(Color.red)
                            .cornerRadius(10)
                            .padding(.bottom, 40) // Ajustar la posición vertical del botón
                    }
                    .transition(.offset(y: 100)) // Ajustar la posición vertical de la transición del botón
                    .animation(
                        .easeIn(duration: 1.0))
                }

                Spacer()
            }
        }
        .onAppear {
            // Esto activará la animación cuando la vista aparezca
            withAnimation {
                showContinueButton = true
            }
        }
        .background(
            NavigationLink(destination: HomeclienteView(), isActive: $goToHome) {
                EmptyView()
            }
            .hidden()
        )
    }
}

struct HomeclienteView: View {
    var body: some View {
        Text("¡Bienvenido a HomeClienteView!")
            .font(.title)
            .foregroundColor(.black)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
