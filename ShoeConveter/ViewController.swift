//
//  ViewController.swift
//  ShoeConveter
//
//  Created by abu aunik on 3/31/15.
//  Copyright (c) 2015 Abu Aunik. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mensShoeSizeTextField: UITextField!
    @IBOutlet weak var womensShoeSizeTextField: UITextField!
    
    @IBOutlet weak var mensConvertedShoeSizeLabel: UILabel!
    @IBOutlet weak var womensShoeSizeConvertedLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertButtonPressed(sender: UIButton) {
        let conversionConstant = 30
        
        //Get the value from the TextField
        let sizeFromTextField = mensShoeSizeTextField.text.toInt()!
        
        //Update the converted value in the view
        mensConvertedShoeSizeLabel.hidden = false
        mensConvertedShoeSizeLabel.text = "\(sizeFromTextField + conversionConstant)" + " in European Shoe Size"
    }
    
    
    @IBAction func convertWomensShoeSizeButtonPressed(sender: UIButton) {
        let conversionConstant = 30.5
        
        //Get the value from the TextField
        let sizeFromTextField = Double((womensShoeSizeTextField.text as NSString).doubleValue)
        
        //Update the converted value in view
        womensShoeSizeConvertedLabel.hidden = false
        womensShoeSizeConvertedLabel.text = "\(sizeFromTextField + conversionConstant)" + " in European Size"
        
    }

}

