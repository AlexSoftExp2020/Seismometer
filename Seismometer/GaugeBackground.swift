//
//  GaugeBackground.swift
//  Seismometer
//
//  Created by Oleksii on 26.01.2025.
//

import SwiftUI

extension Angle: Identifiable {
    public var id: Double {
        radians
    }
}

struct GaugeBackground: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    GaugeBackground()
}
