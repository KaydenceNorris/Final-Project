//
//  AnimalIcon.swift
//  Final Project
//
//  Created by NORRIS, KAYDENCE M. on 4/29/26.
//

import SwiftUI
struct AnimalIcon: View {
    let animal: AnimalModel
    var body: some View {
        ZStack(alignment: .bottom){
            Text(animal.name)
                .padding(2)
                .font(.caption)
        }
        .padding(3)
        .frame(width: 100, height: 110)
        .background(.brown)
        .clipShape(RoundedRectangle(cornerRadius: 10))

    }
}

#Preview {
    AnimalIcon()
}
