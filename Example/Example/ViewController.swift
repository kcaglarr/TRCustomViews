//
//  ViewController.swift
//  Example
//
//  Created by kerimcaglar on 3.11.2018.
//  Copyright © 2018 kerimcaglar. All rights reserved.
//

import UIKit
import TRCustomViews

class ViewController: UIViewController {

    @IBOutlet weak var showHideButton: UIButton!
    var clicked: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        CustomLoader.customLoaderInstance.mainView = self.view
        CustomLoader.customLoaderInstance.loadingLabel.text = "Loading..."
        CustomLoader.customLoaderInstance.alfaValueOfLoaderView = 1.0
        CustomLoader.customLoaderInstance.loadingImage.rotate()
        CustomLoader.customLoaderInstance.showCustomLoader()
        
    }
    
    @IBAction func hideOrShowLoader(_ sender: Any) {
        clicked = !clicked
        if clicked{
            CustomLoader.customLoaderInstance.removeCustomLoader()
            showHideButton.setTitle("Show", for: .normal)
        }else{
            CustomLoader.customLoaderInstance.showCustomLoader()
            showHideButton.setTitle("Hide", for: .normal)
        }
    }
    
}

