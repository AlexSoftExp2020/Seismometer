//
//  MotionDetector.swift
//  Seismometer
//
//  Created by Oleksii on 29.01.2025.
//

import CoreMotion
import UIKit

class MotionDetector: ObservableObject {
    private let motionManager = CMMotionManager()
    
    private var timer = Timer()
    private var updateInterval: TimeInterval
    
    @Published var pitch: Double = 0
    @Published var roll: Double = 0
    @Published var zAcceleration: Double = 0
    
    var onUpdate: (() -> Void) = {}
    
    private var currentOrientation: UIDeviceOrientation = .landscapeLeft
    private var orientationObserver: NSObjectProtocol? = nil
    let orientationNotification = UIDevice.orientationDidChangeNotification
    
    init(updateInterval: TimeInterval) {
        self.updateInterval = updateInterval
    }
    
    
}
