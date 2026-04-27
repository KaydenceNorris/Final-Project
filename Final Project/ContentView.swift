//
//  ContentView.swift
//  Final Project
//
//  Created by NORRIS, KAYDENCE M. on 4/27/26.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = AnimalViewModel()
    var body: some View {
        VStack {
            Text("Animal Facts!")
            
            let animalName: String = viewModel.name ?? "Error"
            
            Text(animalName)
            
            Button("Generate new Animal"){
                viewModel.fetchAnimal()
            }
        }

    }
}

#Preview {
    ContentView()
}
