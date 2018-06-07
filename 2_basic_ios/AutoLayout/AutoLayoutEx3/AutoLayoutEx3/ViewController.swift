import UIKit

class ViewController: UIViewController {
    
    //outloet collection for labels
    @IBOutlet var lbls: [UILabel]!

    //change all lbls text
    @IBAction func go(_ sender: UIButton){
        for label in lbls {
            label.text = "Diamond"
        }
    }
}
