//
//  ViewController.swift
//  xyz-app
//
//  Created by Denis Rakitin on 2019-01-18.
//  Copyright © 2019 Denis Rakitin. All rights reserved.
//

import UIKit
import CoreMotion

class ViewController: UIViewController {
    @IBOutlet weak var xLbl: UILabel!
    @IBOutlet weak var yLbl: UILabel!
    @IBOutlet weak var zLbl: UILabel!
    
    var motionManager: CMMotionManager!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        motionManager = CMMotionManager()
        motionManager.startAccelerometerUpdates(to: .main, withHandler: updateLbls)
    }
    
    func updateLbls(data: CMAccelerometerData?,error: Error?)  {
        guard let accelerometrData = data else {return}
        
        let formatter = NumberFormatter()
        formatter.minimumFractionDigits =  1
        formatter.maximumFractionDigits = 1
        
        let x = formatter.string(for: accelerometrData.acceleration.x)
        let y = formatter.string(for: accelerometrData.acceleration.y)
        let z = formatter.string(for: accelerometrData.acceleration.z)
        
        xLbl.text = "X: \(x!)"
        yLbl.text = "Y: \(y!)"
        zLbl.text = "Z: \(z!)"
        
        
    }


}

