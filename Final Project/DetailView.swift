//
//  DetailView.swift
//  Final Project
//
//  Created by Jacob Angel on 5/12/26.
//

import SwiftUI

struct DetailView: View {
    let animal: AnimalModel
    var body: some View {
        Text(animal.name)// shows a page with other info about the animal. Once again graphic design is not my passion
            .background(Color.yellow)
            .underline(true)
            .bold()
            .font(.largeTitle)
        Text(animal.taxonomy.scientificName)
        
        Divider()
        Text(animal.characteristics.lifespan)
        Text(animal.characteristics.diet)
        Divider()
        
        ForEach(animal.locations, id: \.self) { location in
            Text(location)// shows the different locatons if an animal has one
                .font(.default)
        }
    }
}

#Preview {
        DetailView(animal: AnimalModel( // animal made to pass in
            name: "Ball Python",
            taxonomy: Taxonomy(scientificName: "Python regius"),
            locations: ["Africa"],
            characteristics: Characteristic(diet: "Carnivore", lifespan: "30 years")))
    }
