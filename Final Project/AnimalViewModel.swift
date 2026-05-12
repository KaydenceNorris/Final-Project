//
//  AnimalViewModel.swift
//  Final Project
//
//  Created by NORRIS, KAYDENCE M. on 4/27/26.
//
import SwiftUI
import Combine
class AnimalViewModel: ObservableObject , Identifiable{
        @Published var animals: [AnimalModel] = []
        
        init() {
            fetchAnimals()
        }
        
        func fetchAnimals(name: String = "python") {
            guard let url = URL(string: "https://api.api-ninjas.com/v1/animals?name=\(name)") else { return }
            
            var request = URLRequest(url: url)
            request.setValue("Ki9fsfFGcnfBvTBOqTkJEDZV6biDZ1Br8rUusfLl", forHTTPHeaderField: "X-Api-Key")
            
            URLSession.shared.dataTask(with: request) { data, response, error in
                guard let data = data else { return }
                print(String(data: data, encoding: .utf8)!)
                
                do {
                    let animalResponse = try JSONDecoder().decode([AnimalModel].self, from: data)
                    DispatchQueue.main.async {
                        self.animals = animalResponse
                        print(self.animals)
                    }
                } catch {
                    print("Decoding failed: \(error)")
                }
            }.resume()
        }
    }

