//
//  Views.swift
//  Final Project
//
//  Created by Jacob Angel on 5/12/26.
//
import SwiftUI

struct Views: View {
    var body: some View {
        TabView {
            ContentView()
                .tabItem {
                    Label("Main", systemImage: "house")
                }
            
            DeveloperView()
                .tabItem {
                    Label("Developer", systemImage: "person.crop.circle")
                }
        }
    }
}

#Preview {
    Views()
}
