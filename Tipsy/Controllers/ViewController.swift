

import UIKit

class CalculatorViewController: UIViewController {

    @IBOutlet weak var billTextField: UITextField!
    
    @IBOutlet weak var zeroPtcBitton: UIButton!
    @IBOutlet weak var tenPtcButton: UIButton!
    @IBOutlet weak var twentyPtcButton: UIButton!
    
    @IBOutlet weak var splitNumberLable: UILabel!
    
    var bill = "1"
    var percent = 0.1
    var people = 2
    
    
    @IBAction func tipChanged(_ sender: UIButton) {
        updateUI()
        sender.isSelected = true
        if (sender.currentTitle == "0%") {
            percent = 0.0
        }
        else if (sender.currentTitle == "10%"){
            percent = 0.1
        }
        else {
            percent = 0.2
        }
        
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        people = Int(sender.value)
        splitNumberLable.text = String(people)
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        print(percent)
        print(people)
        bill = billTextField.text!
        print(bill)
        billTextField.endEditing(true)
    }
    
    func updateUI() {
        zeroPtcBitton.isSelected = false
        tenPtcButton.isSelected = false
        twentyPtcButton.isSelected = false
    }

}

