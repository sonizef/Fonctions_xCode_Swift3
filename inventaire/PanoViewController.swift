//
//  PanoViewController.swift
//  inventaire
//
//  Created by Joris ZEFIRINI on 23/11/2016.
//  Copyright © 2016 SoniWeb. All rights reserved.
//

import UIKit
import GLKit

class PanoViewController: GLKViewController {
    
    var panoramaView = PanoramaView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        panoramaView?.setImageWithName("Blender360 2.jpg")
        panoramaView?.touchToPan = true          // Use touch input to pan
        panoramaView?.orientToDevice = true     // Use motion sensors to pan
        panoramaView?.pinchToZoom = false         // Use pinch gesture to zoom
        panoramaView?.showTouches = true         // Show touches
        
        self.view = panoramaView

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func glkView(_ view: GLKView, drawIn rect: CGRect) {
        panoramaView?.draw()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
