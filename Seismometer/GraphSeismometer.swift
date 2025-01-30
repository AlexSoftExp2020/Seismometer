//
//  GraphSeismometer.swift
//  Seismometer
//
//  Created by Oleksii on 29.01.2025.
//

import SwiftUI

struct GraphSeismometer: View {
    @EnvironmentObject private var detector: MotionDetector
    @State private var data = [Double]()
let maxData =  1000
    
    @State private var sensitivity = 0.0
    let graphMaxValueMostSensitive = 0.01
    let graphMaxValueLeastSensitive = 1.0
    
    var graphMaxValue: Double {
        graphMaxValueMostSensitive + (1 - sensitivity) * (graphMaxValueLeastSensitive - graphMaxValueMostSensitive)
    }
    
    var graphMinValue: Double {
        -graphMaxValue
    }
    
    var body: some View {
        VStack {
            Spacer()
            //MARK: TODO LineGraph
        }
    }
}

#Preview {
    GraphSeismometer()
}
