//
//  TitleViewController.swift
//  EuroConverter
//
//  Created by Marco Mărieș on 17.03.2023.
//

import UIKit

class TitleViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBAction func startConvertingButton(_ sender: UIButton) {
        self.performSegue(withIdentifier: "goToConversionSelection", sender: self)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = "Euro Converter"
        
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "goToConversionSelection" {
            let destinationVC = segue.destination as! ConversionSelectionViewController
        }
        
    }
}
