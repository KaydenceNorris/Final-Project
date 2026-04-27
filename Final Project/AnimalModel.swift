//
//  AnimalModel.swift
//  Final Project
//
//  Created by NORRIS, KAYDENCE M. on 4/27/26.
//
import Foundation

struct AnimalModel: Decodable {
    let name: String
    let scientificName: Taxonomy
    let locations: [String]
    let diet: Characteristic
    let slogan: Characteristic
    let lifespan: Characteristic
    
}
struct Taxonomy: Decodable {
    let scientificName: String
}
struct Characteristic: Decodable {
    let diet: String
    let slogan: String
    let lifespan: String
}
