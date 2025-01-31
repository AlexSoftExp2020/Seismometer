//
//  SeismometerBrowser.swift
//  Seismometer
//
//  Created by Oleksii on 31.01.2025.
//

import SwiftUI

struct SeismometerBrowser: View {
    @StateObject private var detector = MotionDetector(updateInterval: 0.01)
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    SeismometerBrowser()
}
