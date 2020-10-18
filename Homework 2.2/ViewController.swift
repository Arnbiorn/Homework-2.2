//
//  ViewController.swift
//  Homework 2.2
//
//  Created by Егор Скрутелев on 18.10.2020.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var coloredView: UIView!
    
    @IBOutlet var redValueLabel: UILabel!
    @IBOutlet var greenValueLabel: UILabel!
    @IBOutlet var blueValueLabel: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorChanges()
        changeLabelValues()
    }
    
    func colorChanges() {
        coloredView.backgroundColor = .init(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
    }
    
    func changeLabelValues() {
        redValueLabel.text = String(round(100 * Double(redSlider.value)) / 100)
        greenValueLabel.text = String(round(100 * Double(greenSlider.value)) / 100)
        blueValueLabel.text = String(round(100 * Double(blueSlider.value)) / 100)
    }
    
    @IBAction func recolorSlider() {
        colorChanges()
        changeLabelValues()
    }
    
    
}

