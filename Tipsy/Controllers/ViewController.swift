

import UIKit

class CalculatorViewController: UIViewController {

    @IBOutlet weak var billTextField: UITextField!
    
    @IBOutlet weak var zeroPtcBitton: UIButton!
    @IBOutlet weak var tenPtcButton: UIButton!
    @IBOutlet weak var twentyPtcButton: UIButton!
    
    @IBOutlet weak var splitNumberLable: UILabel!
    
    var billTotal = 0.0
    var percent = 0.1
    var people = 2
    var finalResult = "0.0"
    
    
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
        
        billTextField.endEditing(true)
        
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        people = Int(sender.value)
        splitNumberLable.text = String(people)
        
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let bill = String(billTextField.text!.replacingOccurrences(of: ",", with: "."))
        if (bill != "") {
            billTotal = Double(bill)!
            let result = ((1 + percent) * billTotal) / Double(people)
            let resultTo2DecimalPlaces = String(format: "%.2f", result)
            finalResult = resultTo2DecimalPlaces
            print(finalResult)
            
            self.performSegue(withIdentifier: "ResultView", sender: self)
        }
    }
    
    func updateUI() {
        zeroPtcBitton.isSelected = false
        tenPtcButton.isSelected = false
        twentyPtcButton.isSelected = false
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "ResultView") {
            let controller = segue.destination as! ResultViewController
            controller.result = finalResult
            controller.percent = Int(percent * 100)
            controller.people = people
        }
    }

}

