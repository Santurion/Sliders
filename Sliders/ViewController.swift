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
     
    }


}

