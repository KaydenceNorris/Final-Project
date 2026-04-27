//
//  AnimalViewModel.swift
//  Final Project
//
//  Created by NORRIS, KAYDENCE M. on 4/27/26.
//
import SwiftUI
import Combine
// Need to add an extr step of user slecting a world location!!!!!!!!!!!!
class AnimalViewModel: ObservableObject {
//    @Published var animal: AnimalModel?
    @Published var name: String = ""
    @Published var scientificName: String = ""
    @Published var locations: [String] = []
    @Published var diet: String = ""
    @Published var slogan: String = ""
    @Published var lifespan: String = ""
    @Published var prey: String = ""
    
    func fetchAnimal() {
        guard let url = URL(string: "https://api.api-ninjas.com/v1/animals") else {
            print("Invalid URL")
            return
        }
        
        var request = URLRequest(url: url)
        request.setValue("Ki9fsfFGcnfBvTBOqTkJEDZV6biDZ1Br8rUusfLl", forHTTPHeaderField: "X-Api-Key")
        
        URLSession.shared.dataTask(with: request) {(data, response, error) in
            guard let data = data else { return }
            print(String(data: data, encoding: .utf8)!)
            
            do {
                let animal = try JSONDecoder().decode(AnimalModel.self, from: data)
                
                DispatchQueue.main.async {
                    self.name = animal.name
                    self.scientificName = animal.scientificName.scientificName
                    self.locations = animal.locations
                    self.diet = animal.diet.diet
                    self.slogan = animal.slogan.slogan
                    self.lifespan = animal.lifespan.lifespan
                    self.prey = animal.prey.prey
                }
            } catch{
                print("Decoding failed")
            }
    
        }.resume( )
    }
}
