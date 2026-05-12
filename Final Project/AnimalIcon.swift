//
//  AnimalIcon.swift
//  Final Project
//
//  Created by Kaydence Norris on 4/27/26.
//
import SwiftUI

struct AnimalIcon: View {
    let animal: AnimalModel
    
    var body: some View {
        NavigationLink(destination: DetailView(animal: animal)) {
            Text(animal.name)
                .font(.headline)
                .padding()
                .frame(width: 160)
                .background(Color.green)
                .clipShape(RoundedRectangle(cornerRadius: 12))
        }
        .buttonStyle(.plain)
    }
}

#Preview {
    AnimalIcon(animal: AnimalModel(
        name: "Ball Python",
        taxonomy: Taxonomy(scientificName: "Python regius"),
        locations: ["Africa"],
        characteristics: Characteristic(diet: "Carnivore", lifespan: "30 years")))
}
