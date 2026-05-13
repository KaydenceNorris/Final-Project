//
//  Developer.swift
//  Final Project
//
//  Created by Jacob Angel on 5/12/26.
//

import SwiftUI

struct DeveloperView: View {
    var body: some View {
        VStack(spacing: 12) {
            ForEach(Dev.allCases, id: \.self) { dev in
                DeveloperIcon(dev: dev)
            }
        }
        .padding()
    }
}

#Preview {
    DeveloperView()
}

