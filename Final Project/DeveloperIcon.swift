//
//  DeveloperIcon.swift
//  Final Project
//
//  Created by Jacob Angel on 5/12/26.
//
import SwiftUI
struct DeveloperIcon: View {
    let dev: Dev
    var body: some View {
        VStack{
            Text(dev.name)
                .padding(10)
                .bold()
                .underline()
            Text("What did they do?")
                .underline()
            Text(dev.work)
                .padding(10)
            Text("How many bugs?")
                .underline()
            Text(dev.bugs)
        }
        .background(Color.yellow)
        .padding(10)
    }
    
}

#Preview {
    DeveloperIcon(dev: .claude)
}

