//
//  EurToRonViewController.swift
//  EuroConverter
//
//  Created by Marco Mărieș on 17.03.2023.
//

import UIKit

class EurToRonViewController: UIViewController, UITextFieldDelegate {
    
    var convertorBrainEurToRon = ConvertorBrain()
    
    @IBOutlet weak var eurTextField: UITextField!
    
    @IBOutlet weak var ratioTextField: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func clearButtonPressed(_ sender: UIButton) {
        convertorBrainEurToRon.playSound()
        updateUI()
        
        
    }
    
    
    @IBAction func conversionButtonPressed(_ sender: UIButton) {
        convertorBrainEurToRon.playSound()
        let userEurInput = Float(eurTextField.text!) ?? 0
        print(userEurInput)
        
        convertorBrainEurToRon.eurValue = convertorBrainEurToRon.getEurValue(userEurInput: userEurInput)
        let userRatioInput = Float(ratioTextField.text!) ?? 0
        print(userRatioInput)
        convertorBrainEurToRon.ratio =  convertorBrainEurToRon.getRatioValue(userRatioInput: userRatioInput)
        let ronResult = convertorBrainEurToRon.conversionEurToRon()
        print(ronResult)
        resultLabel.text = String(format: "%.2f", ronResult)
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        eurTextField.delegate = self
        ratioTextField.delegate = self
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        eurTextField.endEditing(true)
        ratioTextField.endEditing(true)
        return true
    }
    
    func updateUI(){
        eurTextField.text = ""
        ratioTextField.text = ""
        resultLabel.text = "0"
        
    }
    
    
    
    
    
    
}
