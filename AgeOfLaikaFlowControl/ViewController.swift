//
//  ViewController.swift
//  AgeOfLaikaFlowControl
//
//  Created by Thomas Parker on 07/11/2014.
//  Copyright (c) 2014 Thomas Parker. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var dogYearsLabel: UILabel!
    @IBOutlet weak var humanYearsTextField: UITextField!
    @IBOutlet weak var LaikaStampImageView: UIImageView!
    @IBOutlet weak var dogYearsResultLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func convertToDogYearsButtonPressed(sender: UIButton) {
        dogYearsLabel.text = "Dog years"
        LaikaStampImageView.hidden = false
        dogYearsResultLabel.hidden = false
        dogYearsResultLabel.text = "You would be \(humanYearsTextField.text.toInt()! * 7) as a dog"
        
    }
    
    @IBAction func convertToRealDogYearsButtonPressed(sender: UIButton) {
        var dogYears:Int!
        var humanYears:Int!
        dogYearsLabel.text = "Real dog years!!"
        LaikaStampImageView.hidden = false
        dogYearsResultLabel.hidden = false
        if humanYearsTextField.text != "" {
            humanYears = humanYearsTextField.text.toInt()!
        }
        else {
            humanYears = nil
        }
        
        if humanYears == nil {
            dogYears = nil
        }
        else if humanYears < 2 && humanYears > 0 {
            dogYears = humanYears * 10.5
        }
        else if(humanYears > 2) {
            dogYears = 21 + 4 * (humanYears - 2)
        }
        else if (humanYears < 0) {
            dogYears = nil
        }
        
        if(dogYears != nil) {
            dogYearsResultLabel.text = "In dog years, you are \(dogYears) years old"
        }
        else {
            dogYearsResultLabel.text = "Enter a valid age, you moron!"
        }
        
    }


}

