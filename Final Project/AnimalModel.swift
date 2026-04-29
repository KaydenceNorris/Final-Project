//
//  AnimalModel.swift
//  Final Project
//
//  Created by NORRIS, KAYDENCE M. on 4/27/26.
//
import Foundation

struct AnimalModel: Decodable {
    var name: String = "Test"
    var scientificName: Taxonomy
    var locations: [String] = ["Here", "There"]
    var diet: Characteristic
    var lifespan: Characteristic
    
}
struct Taxonomy: Decodable {
    var scientificName: String = "Test Science name"
}
struct Characteristic: Decodable {
    var diet: String = "Hungry"
    var lifespan: String = "1000000 Billion Years"
}
