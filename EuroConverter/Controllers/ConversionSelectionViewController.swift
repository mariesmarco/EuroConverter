//
//  ConversionSelectionViewController.swift
//  EuroConverter
//
//  Created by Marco Mărieș on 17.03.2023.
//

import UIKit

class ConversionSelectionViewController: UIViewController {
    
    @IBAction func eurToRonButtonPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "goToEurToRonConversion", sender: self)
        
    }
    
    @IBAction func ronToEurButtonPressed(_ sender: UIButton) {
        
        self.performSegue(withIdentifier: "goToRonToEurConversion", sender: self)
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToEurToRonConversion" {
            let destinationVC = segue.destination as! EurToRonViewController
        } else if segue.identifier == "goToRonToEurConversion" {
            let destinationVC = segue.destination as! RonToEurViewController
        }
        
        
    }
    
}
