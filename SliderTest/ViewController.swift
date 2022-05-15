//
//  ViewController.swift
//  SliderTest
//
//  Created by IACD-024 on 2022/05/15.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var displayLbl: UILabel!
    @IBOutlet var slider: UISlider!
    
    @IBOutlet var box: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        slider.value = 50
        slider.maximumValue = 0
        slider.maximumValue = 100

    }

    @IBAction func sliderChanged(_ sender: UISlider) {
        
        displayLbl.text = String(Int(sender.value))
        
        box.backgroundColor = UIColor(red: CGFloat(slider.value/100), green: 0.7, blue: 0.5, alpha: 1)
        self.view.backgroundColor = UIColor(red: 0.7, green: CGFloat(slider.value/100), blue: 0.5, alpha: 1)
    }
    
    
}

