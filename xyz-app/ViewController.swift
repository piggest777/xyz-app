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
    }


}

