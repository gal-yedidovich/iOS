import UIKit

class ViewController: UIViewController {

    @IBOutlet var feed: UILabel!
    let values:[String] = [
        "Bubu is great",
        "Groot is awesome",
        "Shiri is hyperactive"];
    
    @IBAction func slide(_ sender: UISlider) {
        feed.alpha = CGFloat(sender.value)
    }
    
    @IBAction func step(_ sender: UIStepper) {
        feed.text = "\(sender.value)"
    }
    
    @IBAction func onOff(_ sender: UISwitch) {
        feed.isHidden = !sender.isOn
    }
    
    @IBAction func changeSeg(_ sender: UISegmentedControl) {
        let index = sender.selectedSegmentIndex
        feed.text = values[index]
    }
}


