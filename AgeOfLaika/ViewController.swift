//
//  ViewController.swift
//  AgeOfLaika
//
//  Created by Matthew Cox on 9/30/14.
//  Copyright (c) 2014 Matthew Cox. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var humanYearsTextField: UITextField!
    @IBOutlet weak var dogYearsLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertToDogYearsButton(sender: UIButton) {
        // get user input from TextField
        let humanYearsNum = humanYearsTextField.text.toInt()!
        let dogYearMultiplier = 7
        var dogYearsNum = humanYearsNum * dogYearMultiplier
        
        //Unhide label and display answer
        dogYearsLabel.hidden = false
        dogYearsLabel.text = "Dog is \(dogYearsNum) Simple Human years old."
        humanYearsTextField.text = ""
        humanYearsTextField.resignFirstResponder()
    }

    @IBAction func convertToRealDogYearsButtonPressed(sender: UIButton) {
        let humanYearsNum = Double((humanYearsTextField.text as NSString).doubleValue)
        let dogYearMultiplier1 = 10.5
        let dogYearMultiplier2 = 4
        var dogYearsNum:Double
        
        if humanYearsNum < 2 {
            dogYearsNum = humanYearsNum * dogYearMultiplier1
        }
        else { //if humanYearsNum > 2
            dogYearsNum = (humanYearsNum * dogYearMultiplier1) + ((humanYearsNum - 2) * Double(dogYearMultiplier2))
        }
        
        //Unhide label and display answer
        dogYearsLabel.hidden = false
        dogYearsLabel.text = "Dog is \(dogYearsNum) Real Human years old."
        humanYearsTextField.text = ""
        humanYearsTextField.resignFirstResponder()
    }
}