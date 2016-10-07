//
//  ViewController.swift
//  Colour_Maker_Sliders
//
//  Created by Hareth Naji on 26/02/2016.
//  Copyright © 2016 Hazzaldo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var redSlider: UISlider!

    @IBOutlet weak var greenSlider: UISlider!
    
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBOutlet weak var colorView: UIView!
   
    @IBOutlet weak var segmentView: UISegmentedControl!
    
    @IBOutlet weak var textLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set colorView on launch
        
       
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    @IBAction func changeColorComponent() {
        
        let r = CGFloat(redSlider.value)
        let g = CGFloat(greenSlider.value)
        let b = CGFloat(blueSlider.value)
        
        let color = UIColor(red: r, green: g, blue: b, alpha: 1)
        if segmentView.selectedSegmentIndex == 0 {
        colorView.backgroundColor = color
        textLabel.backgroundColor = color
        }
        else {
            textLabel.textColor = color
        }
        
    }
}




