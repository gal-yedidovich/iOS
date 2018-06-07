
import UIKit

class ViewController: UIViewController {

    @IBOutlet var newValueTxt: UITextField!
    @IBOutlet var footerLbl: UILabel!
    private var number = 0
    private var footerStr = "Footer"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    @IBAction func plusOne(_ sender: UIButton) {
        number += 1
        updateUI()
    }
    
    @IBAction func rename(_ sender: UIButton){
        let newValue:String = newValueTxt.text! //get content from text field
        if !newValue.isEmpty {
            footerStr = newValue
            updateUI()
        }
    }
    
    private func updateUI() {
        footerLbl.text = "\(footerStr): \(number)"
    }
    
}