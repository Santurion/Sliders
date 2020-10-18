//
//  ViewController.swift
//  Sliders
//
//  Created by Александр Шуплык on 16.10.2020.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var resultView: UIView!
    
    @IBOutlet var labelRed: UILabel!
    @IBOutlet var labelGreen: UILabel!
    @IBOutlet var labelBlue: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resultView.layer.cornerRadius = 10
        setupDefaultSliders()
        setupTextForColors()
        refreshBackColorForResultView()
     
    }

    @IBAction func sliderRedAcnion() {
        refreshTextForRedColorLabel()
        refreshBackColorForResultView()
    }
    
   
    @IBAction func sliderGreenAction() {
        refreshTextForGreenColorLabel()
        refreshBackColorForResultView()
    }
    
    @IBAction func sliderBlueAction() {
        refreshTextForBlueColorLabel()
        refreshBackColorForResultView()
    }
    
   
    private func setupDefaultSliders() {
           redSlider.value = 0.0
           redSlider.minimumValue = 0
           redSlider.maximumValue = 1
           redSlider.minimumTrackTintColor = .red
           
           greenSlider.value = 0.0
           greenSlider.minimumValue = 0
           greenSlider.maximumValue = 1
           greenSlider.minimumTrackTintColor = .green
           
           blueSlider.value = 0.0
           blueSlider.minimumValue = 0
           blueSlider.maximumValue = 1
           blueSlider.minimumTrackTintColor = .blue
       }
    private func setupTextForColors() {
            refreshTextForRedColorLabel()
            refreshTextForGreenColorLabel()
            refreshTextForBlueColorLabel()
        }
    private func refreshTextForRedColorLabel() {
           labelRed.text = String(format: "%.2f", redSlider.value)
       }
       
       private func refreshTextForGreenColorLabel() {
           labelGreen.text = String(format: "%.2f", greenSlider.value)
       }
       
       private func refreshTextForBlueColorLabel() {
           labelBlue.text = String(format: "%.2f", blueSlider.value)
       }
       
    private func refreshBackColorForResultView() {
           resultView.backgroundColor = UIColor(
               red: CGFloat(redSlider.value),
               green: CGFloat(greenSlider.value),
               blue: CGFloat(blueSlider.value),
               alpha: 1
           )
       }
    
}

