import Foundation

struct AnimalModel: Decodable, Identifiable {
    var id = UUID()
    var name: String
    var taxonomy: Taxonomy
    var locations: [String]
    var characteristics: Characteristic

    enum CodingKeys: String, CodingKey {
        case name, taxonomy, locations, characteristics
    }

    init(name: String, taxonomy: Taxonomy, locations: [String], characteristics: Characteristic) {
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
