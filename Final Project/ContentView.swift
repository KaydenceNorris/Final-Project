//
//  ContentView.swift
//  Final Project
//
//  Created by NORRIS, KAYDENCE M. on 4/27/26.
//
import SwiftUI
// Defaults to python so the user imediatly has something to look at.
// I am using Jacobs mac to do this if the commits look weird
struct ContentView: View {
    @StateObject private var viewModel = AnimalViewModel()
    @State private var searchText: String = "PYTHON"// deer works as an animal.

    var body: some View {
        VStack{
            NavigationStack {
                TextField("Search animals...", text: $searchText)
                    .textFieldStyle(.roundedBorder)
                Button("Search") { // lets the user dearch their own animals. The API itself is kinda janky, so It doesn't work with every animal.
                    viewModel.fetchAnimals(name: searchText)
                }
                .buttonStyle(.borderedProminent)
                ScrollView {
                    LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 12) { // grid to show the results
                        ForEach(viewModel.animals) { animal in
                            AnimalIcon(animal: animal)// for each animal in the reults it uses the AnimalIcon to make a template to display in the grid
                        }
                    }
                    .padding()
                }
                .navigationTitle("Animals")// title for the pge
            }
        }
    }
}

#Preview {
    ContentView()
}
