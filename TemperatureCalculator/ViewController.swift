//
//  ViewController.swift
//  TemperatureCalculator
//
//  Created by KDH on 30/09/2018.
//  Copyright © 2018 KDH. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var enterLabel: UILabel!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var outputLabel: UILabel!
    @IBOutlet weak var formatSeg: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func calculate(_ sender: Any) {
        self.resignFirstResponder()
        
        if formatSeg.selectedSegmentIndex == 0 {
            let fahrenheit = Double(textField.text!)
            let celsius = (fahrenheit! - 32) / 1.8
            
            outputLabel.text = "\(String(format: "%2.2f", celsius)) Celsius"
            
            if celsius > 120 {
                imageView.image = UIImage(named: "Temp9.png")
            } else if celsius > 100 {
                imageView.image = UIImage(named: "Temp8.png")
            } else if celsius > 80 {
                imageView.image = UIImage(named: "Temp7.png")
            } else if celsius > 60 {
                imageView.image = UIImage(named: "Temp6.png")
            } else if celsius > 40 {
                imageView.image = UIImage(named: "Temp5.png")
            } else if celsius > 20 {
                imageView.image = UIImage(named: "Temp4.png")
            } else if celsius > 0 {
                imageView.image = UIImage(named: "Temp3.png")
            } else if celsius > -20 {
                imageView.image = UIImage(named: "Temp2.png")
            } else if celsius <= -20 {
                imageView.image = UIImage(named: "Temp1.png")
            }
        } else if formatSeg.selectedSegmentIndex == 1 {
            let celsius = Double(textField.text!)
            let fahrenheit = celsius! * 1.8 + 32
            
            outputLabel.text = String(format: "%2.2f Fahrenheit", fahrenheit)
            
            if fahrenheit > 160 {
                imageView.image = UIImage(named: "Temp9.png")
            } else if fahrenheit > 140 {
                imageView.image = UIImage(named: "Temp8.png")
            } else if fahrenheit > 120 {
                imageView.image = UIImage(named: "Temp7.png")
            } else if fahrenheit > 100 {
                imageView.image = UIImage(named: "Temp6.png")
            } else if fahrenheit > 80 {
                imageView.image = UIImage(named: "Temp5.png")
            } else if fahrenheit > 60 {
                imageView.image = UIImage(named: "Temp4.png")
            } else if fahrenheit > 40 {
                imageView.image = UIImage(named: "Temp3.png")
            } else if fahrenheit > 20 {
                imageView.image = UIImage(named: "Temp2.png")
            } else if fahrenheit <= 20 {
                imageView.image = UIImage(named: "Temp1.png")
            }
        }
    }
    
    @IBAction func switchFormat(_ sender: Any) {
        if formatSeg.selectedSegmentIndex == 0 {
            enterLabel.text = "Enter Fahrenheit"
            textField.text = ""
            outputLabel.text = "0 Celsius"
        } else if formatSeg.selectedSegmentIndex == 1 {
            enterLabel.text = "Enter Celsius"
            textField.text = ""
            outputLabel.text = "0 Fahrenheit"
        }
    }
}

