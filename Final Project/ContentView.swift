//
//  ContentView.swift
//  Final Project
//
//  Created by NORRIS, KAYDENCE M. on 4/27/26.
//
import SwiftUI
// Defaults to python so the user imediatly has something to look at.
//TODO: Make a way for the user to search their own animals
// I am using Jacobs mac to do this if the commits look weird
struct ContentView: View {
    @StateObject private var viewModel = AnimalViewModel()
    @State private var searchText: String = "PYTHON"// deer works as an animal

    var body: some View {
        VStack{
            NavigationStack {
                TextField("Search animals...", text: $searchText)
                    .textFieldStyle(.roundedBorder)
                Button("Search") {
                    viewModel.fetchAnimals(name: searchText)
                }
                .buttonStyle(.borderedProminent)
                ScrollView {
                    LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 12) {
                        ForEach(viewModel.animals) { animal in
                            AnimalIcon(animal: animal)
                        }
                    }
                    .padding()
                }
                .navigationTitle("Animals")
            }
        }
    }
}

#Preview {
    ContentView()
}
