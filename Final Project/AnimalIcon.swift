//
//  AnimalIcon.swift
//  Final Project
//
//  Created by Kaydence Norris on 4/27/26.
//
import SwiftUI

struct AnimalIcon: View {
    let animal: AnimalModel // the animal passed in
    
    var body: some View {
        NavigationLink(destination: DetailView(animal: animal))
        {// when the button is clicked, it goes to the detail page
            Text(animal.name)// just shows the name.  Everything else is on the deatilVieewpage
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
    AnimalIcon(animal: AnimalModel( // quickly constructed test animal
        name: "Ball Python",
        taxonomy: Taxonomy(scientificName: "Python regius"),
        locations: ["Africa"],
        characteristics: Characteristic(diet: "Carnivore", lifespan: "30 years")))
}
