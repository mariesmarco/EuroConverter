import UIKit
import AVFoundation
class ViewController: UIViewController, UITextFieldDelegate {
    
    var player: AVAudioPlayer!
    var convertorBrain = ConvertorBrain()
    @IBOutlet weak var eurTextField: UITextField!
    @IBOutlet weak var ronTextField: UITextField!
    @IBOutlet weak var ratioTextField: UITextField!
    @IBOutlet weak var ronResultLabel: UILabel!
    @IBOutlet weak var eurResultLabel: UILabel!
    
    @IBAction func conversionEurRonButtonPressed(_ sender: UIButton) {
        playSound()
        let userEurInput = Float(eurTextField.text!) ?? 0
        convertorBrain.eurValue = convertorBrain.getEurValue(userEurInput: userEurInput)
        let userRatioInput = Float(ratioTextField.text!) ?? 0
        convertorBrain.ratio =  convertorBrain.getRatioValue(userRatioInput: userRatioInput)
        let ronResult = convertorBrain.conversionEurToRon()
        ronResultLabel.text = String(format: "%.2f", ronResult)
        
    }
    
    @IBAction func conversionRonEurButtonPressed(_ sender: UIButton) {
        playSound()
        let userRonInput = Float(ronTextField.text!) ?? 0
        convertorBrain.ronValue = convertorBrain.getEurValue(userEurInput: userRonInput)
        let userRatioInput = Float(ratioTextField.text!) ?? 0
        convertorBrain.ratio =  convertorBrain.getRatioValue(userRatioInput: userRatioInput)
        let eurResult = convertorBrain.conversionRonToEur()
        eurResultLabel.text = String(format: "%.2f", eurResult)
        
        
    }
    
    
    @IBAction func clearButtonPressed(_ sender: UIButton) {
        playSound()
        updateUI()
        eurTextField.text = ""
        ronTextField.text = ""
        ratioTextField.text = ""
        
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
    
    
    func playSound(){
        let url = Bundle.main.url(forResource: "button_pressed_sound", withExtension: "mp3")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
    
}

