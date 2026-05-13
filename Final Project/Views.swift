//
//  Views.swift
//  Final Project
//
//  Created by Jacob Angel on 5/12/26.
//
import SwiftUI

struct Views: View {
    var body: some View {
        TabView { // tab page to show different tabs of the app
            ContentView()// the main page
                .tabItem {
                    // Look at thoose sytem images
                    Label("Main", systemImage: "house")
                }
            
            DeveloperView()// developer page
                .tabItem {
                    Label("Developer", systemImage: "person.crop.circle")
                }
            ApiView()// api page
                .tabItem {
                    Label("API", systemImage: "network")
                }
        }
    }
}

#Preview {
    Views()
}
