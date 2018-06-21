//
//  ViewController.swift
//  IOS-Swift-TextGradientColors
//
//  Created by Pooya on 2018-06-21.
//  Copyright © 2018 Pooya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelView1: UILabel!
    @IBOutlet weak var labelView2: UILabel!
    @IBOutlet weak var labelView3: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        labelView1.updateGradientTextColor(gradientColors: [UIColor.red,UIColor.brown,UIColor.yellow,UIColor.cyan])
        
        labelView2.updateGradientTextColor(gradientColors: [UIColor.blue,UIColor.green])
        
        labelView3.updateGradientTextColor(gradientColors: [UIColor(white: 0, alpha: 0.5),UIColor(white: 0, alpha: 0.9)])

    }



}

