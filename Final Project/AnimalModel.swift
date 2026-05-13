import Foundation

struct AnimalModel: Decodable, Identifiable {
    var id = UUID()// stuff I had claude help me with because I was riding the struggle bus
    var name: String
    var taxonomy: Taxonomy
    var locations: [String]
    var characteristics: Characteristic

    enum CodingKeys: String, CodingKey { // More things mr.Claude helped with. Coding keys are used because the API an my property names didn't macth exactly. I can't remeber what he exact problem I was having with this, but I spent a good hour trying to figure this out
        case name, taxonomy, locations, characteristics
    }

    init(name: String, taxonomy: Taxonomy, locations: [String], characteristics: Characteristic) { // If you have to use coding keys you need an init to help it figure out where all of the data goes
        self.id = UUID()
        self.name = name
        self.taxonomy = taxonomy
        self.locations = locations
        self.characteristics = characteristics
    }
}

struct Taxonomy: Decodable {
    var scientificName: String

    enum CodingKeys: String, CodingKey {
        case scientificName = "scientific_name"
    }

    init(scientificName: String) {
        self.scientificName = scientificName
    }
}

struct Characteristic: Decodable {
    var diet: String
    var lifespan: String

    init(diet: String, lifespan: String) {
        self.diet = diet
        self.lifespan = lifespan
    }
}
