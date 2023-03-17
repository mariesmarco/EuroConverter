//
//  RonToEurViewController.swift
//  EuroConverter
//
//  Created by Marco Mărieș on 17.03.2023.
//

import UIKit

class RonToEurViewController: UIViewController, UITextFieldDelegate {
    
    var convertorBrainRonToEur = ConvertorBrain()
    
    @IBOutlet weak var ronTextField: UITextField!
    
    @IBOutlet weak var ratioTextField: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func clearButtonPressed(_ sender: UIButton) {
        convertorBrainRonToEur.playSound()
        updateUI()
        
    }
    
    @IBAction func conversionButtonPressed(_ sender: UIButton) {
        convertorBrainRonToEur.playSound()
        let userRonInput = Float(ronTextField.text!) ?? 0
        print(userRonInput)
        convertorBrainRonToEur.ronValue = convertorBrainRonToEur.getRonValue(userRonInput: userRonInput)
        let userRatioInput = Float(ratioTextField.text!) ?? 0
        print(userRatioInput)
        convertorBrainRonToEur.ratio = convertorBrainRonToEur.getRatioValue(userRatioInput: userRatioInput)
        let eurResult = convertorBrainRonToEur.conversionRonToEur()
        print(eurResult)
        resultLabel.text = String(format: "%.2f", eurResult)
        
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        super.viewDidLoad()
        updateUI()
        ronTextField.delegate = self
        ratioTextField.delegate = self
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        ronTextField.endEditing(true)
        ratioTextField.endEditing(true)
        return true
    }
    
    func updateUI(){
        ronTextField.text = ""
        ratioTextField.text = ""
        resultLabel.text = "0"
        
    }
    
    
}
