//
//  ContentView.swift
//  Homework2
//
//  Created by Ali Ayçiçek on 5.08.2024.
//



import SwiftUI

struct CelsiusSample: View {
    @State private var celsius = ""
    @State private var fahrenheit = ""

    var body: some View {
        VStack {
            HStack {
               
                TextField("Celsius", text: $celsius)
                    .padding()
                    .keyboardType(.decimalPad)
                    .onChange(of: celsius, perform: { value in
                        convertToFahrenheit()
                    })

                Spacer()
            }

            
            Text("Fahrenheit: \(fahrenheit)")
                .foregroundColor(.red)
        }
        .padding()
        .background(Color.black)
        .foregroundColor(.red)
    }

   
    func convertToFahrenheit() {
        if let celsiusValue = Double(celsius) {              let fahrenheitValue = celsiusValue * 9 / 5 + 32
            fahrenheit = String(format: "%.2f", fahrenheitValue)
        } else {
            fahrenheit = "Error!" 
        }
    }
}

struct CelsiusSample_Previews: PreviewProvider {
    static var previews: some View {
        CelsiusSample()
    }
}
