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
        self.performSegue(withIdentifier: "goToConverterScreen", sender: self)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = "Euro Converter"
        
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "goToConvertorScreen" {
            let destinationVC = segue.destination as! TitleViewController
        }
        
    }
}
