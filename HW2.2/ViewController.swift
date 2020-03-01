//
//  ViewController.swift
//  HW2.2
//
//  Created by Михаил Малышев on 29/02/2020.
//  Copyright © 2020 Mikhail Malyshev. All rights reserved.
//
import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var colorView: UIView!
    
    @IBOutlet weak var valueOfRedColor: UILabel!
    @IBOutlet weak var valueOfGreenColor: UILabel!
    @IBOutlet weak var valueOfBlueColor: UILabel!
    
    @IBOutlet weak var sliderOfRedColor: UISlider!
    @IBOutlet weak var sliderOfGreenColor: UISlider!
    @IBOutlet weak var sliderOfBlueColor: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorView.layer.cornerRadius = 20
        
        changeColor()
        
        valueOfRedColor.text = String(sliderOfRedColor.value)
        valueOfGreenColor.text = String(sliderOfGreenColor.value)
        valueOfBlueColor.text = String(sliderOfBlueColor.value)
    }
    
    private func changeColor() {
        colorView.backgroundColor = UIColor(red: CGFloat(sliderOfRedColor.value), green: CGFloat(sliderOfGreenColor.value), blue: CGFloat(sliderOfBlueColor.value), alpha: 1)
    }
    
    @IBAction func redSliderAction() {
        changeColor()
        valueOfRedColor.text = String(format: "%.2f", Double(sliderOfRedColor.value))
    }
    
    @IBAction func greenSliderAction() {
        changeColor()
        valueOfGreenColor.text = String(format: "%.2f", Double(sliderOfGreenColor.value))
    }
    
    @IBAction func blueSliderAction() {
        changeColor()
        valueOfBlueColor.text = String(format: "%.2f", Double(sliderOfBlueColor.value))
    }
}
