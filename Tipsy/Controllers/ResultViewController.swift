

import Foundation
import UIKit

class ResultViewController : UIViewController{
    
    var result = "0.0"
    var percent = 10
    var people = 2
    
    @IBOutlet weak var totalLable: UILabel!
    
    @IBOutlet weak var peopleSettingsLable: UILabel!
    @IBOutlet weak var percentSettingsLable: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        totalLable.text = result
        peopleSettingsLable.text = "Split between \(people) people"
        percentSettingsLable.text = "Tip is \(percent)%"
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
}
