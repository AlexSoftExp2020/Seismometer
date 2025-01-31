//
//  NeedleSeismometer.swift
//  Seismometer
//
//  Created by Oleksii on 30.01.2025.
//

import SwiftUI

struct NeedleSeismometer: View {
    @EnvironmentObject var motionDetector: MotionDetector
    
    let needleAnchor = UnitPoint(x: 0.5, y: 1)
    let amplification = 2.0
    var rotationAngle: Angle {
        Angle(radians: -motionDetector.zAcceleration * amplification)
    }
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    NeedleSeismometer()
}
