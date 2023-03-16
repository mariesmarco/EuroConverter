import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var eurTextField: UITextField!
    @IBOutlet weak var ronTextField: UITextField!
    @IBOutlet weak var ratioTextField: UITextField!
    @IBOutlet weak var ronResultLabel: UILabel!
    @IBOutlet weak var eurResultLabel: UILabel!
    
    @IBAction func conversionEurRonButtonPressed(_ sender: UIButton) {
        let floatRonResult = getEurValue() * getRatioValue()
        ronResultLabel.text = String(format: "%.2f", floatRonResult)
        
    }
    
    @IBAction func conversionRonEurButtonPressed(_ sender: UIButton) {
        let floatEurResult = getRonValue() / getRatioValue()
        eurResultLabel.text = String(format: "%.2f", floatEurResult)
        }
    
    
    @IBAction func clearButtonPressed(_ sender: UIButton) {
        updateUI()
        eurTextField.text = "0"
        ronTextField.text = "0"
        ratioTextField.text = "0"
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
        eurTextField.delegate = self
        ronTextField.delegate = self
        ratioTextField.delegate = self
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        eurTextField.endEditing(true)
        ronTextField.endEditing(true)
        ratioTextField.endEditing(true)
        return true
    }
    
    func updateUI(){
      
        ronResultLabel.text = "0"
        eurResultLabel.text = "0"
    }
    
    func getEurValue() -> Float {
        let eurValue = Float(eurTextField.text ?? "0") ?? 0
        return eurValue
    }
    
    func getRonValue() -> Float {
        let ronValue = Float(ronTextField.text ?? "0") ?? 0
        return ronValue
    }
    
    func getRatioValue() -> Float {
        let ratioValue = Float (ratioTextField.text ?? "0") ?? 0
        return ratioValue
    }

   

}

