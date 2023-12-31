//
//  ContentView.swift
//  Unit Converter
//
//  Created by Justin Rebbeck on 12/5/23.
//

import SwiftUI

struct ContentView: View {
    @State private var value = ""
    @State var FinalVal = 0.0
    var body: some View {
        NavigationView {
            VStack {
                Text("Unit Converter")
                    .font(.title)
                    .bold()
                Image("ruler")
                    .resizable()
                    .frame(width: 400, height: 150)
                Text("Convert with feet and meters")
                Spacer()
                
                    TextField("Enter feet", text: $value)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .frame(width: 105, height: 150)
                        .padding()
                Button("Calculate") {
                    FinalVal = (Double(value) ?? 0.0) * Double(3.28)
                }
                Text(String(FinalVal))
                    Spacer()
            }
            .padding()
            .background(Color.blue)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

