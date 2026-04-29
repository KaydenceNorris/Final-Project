//
//  ContentView.swift
//  Final Project
//
//  Created by NORRIS, KAYDENCE M. on 4/27/26.
//
import SwiftUI
// Defaults to python so the user imediatly has something to look at.
//TODO: Make a way for the user to search their own animals
struct ContentView: View {
    @StateObject private var viewModel = AnimalViewModel()
    var body: some View {
        VStack {
            Text("Animal Facts!")
            
     
            Button("Search Animal"){
                var animal = viewModel.fetchAnimal()
                
                
            }
        }

    }
}

#Preview {
    ContentView()
}
