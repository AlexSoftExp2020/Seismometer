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
    
    func start() {
        if motionManager.isDeviceMotionAvailable {
            motionManager.startDeviceMotionUpdates()
            
            timer = Timer.scheduledTimer(withTimeInterval: updateInterval, repeats: true, block: { _ in
                // MARK: TODO self.updateMotionData()
            })
        } else {
            print("Device motion not available")
        }
        
        UIDevice.current.beginGeneratingDeviceOrientationNotifications()
        
        orientationObserver = NotificationCenter.default.addObserver(forName: orientationNotification, object: nil, queue: .main) { [weak self] _ in
            switch UIDevice.current.orientation {
            case .faceUp, .faceDown, .unknown:
                break
            default:
                self?.currentOrientation = UIDevice.current.orientation
            }
        }
    }
}
