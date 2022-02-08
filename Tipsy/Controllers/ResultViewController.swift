

import Foundation
import UIKit

class ResultViewController : UIViewController{
    @IBOutlet weak var totalLable: UILabel!
    
    @IBOutlet weak var peopleSettingsLable: UILabel!
    @IBOutlet weak var percentSettingsLable: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
    }
}
