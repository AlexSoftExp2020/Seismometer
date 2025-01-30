//
//  LineGraph.swift
//  Seismometer
//
//  Created by Oleksii on 30.01.2025.
//

import SwiftUI

struct LineGraph: View {
    let data: [Double]
    let maxData: Int
    
    let minValue: Double
    let maxValue: Double
    
    let gridSpacing = 250
    
    @State private var timestep = 0
    
    func yGraphPosition(_ dataItem: Double, in size: CGSize) -> Double {
        let proportion = (dataItem - minValue) / (maxValue - minValue)
        
        let yValue: Double = size.height - proportion * size.height
        
        return yValue
    }
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    LineGraph()
}
