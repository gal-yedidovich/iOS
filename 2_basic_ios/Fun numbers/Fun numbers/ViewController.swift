import UIKit

class ViewController: UIViewController {
    
    //type alias for strategy function type
    typealias MySequance = ((_ iterations: Int, _ isSlow: Bool) -> String)
    
    //outlets
    @IBOutlet var output: UITextView!
    @IBOutlet var isSlowSwitch: UISwitch!
    @IBOutlet var countSlider: UISlider!
    
    private var sequence: MySequance! //selected strategy
    private let algorithm: [MySequance] = [ //strategies
        {
            (iterationCount, isSlow) -> String in
            var text = ""
            for i in 1...iterationCount {
                text += "\(i)\n"
                
                if(isSlow) {
                    usleep(700000)
                }
            }
            return text
        },
        {
            (iterationCount, isSlow) -> String in
            var one = 1
            var two = 1
            var text = ""
            for i in 0...iterationCount {
                text += "\(one)\n"
                let temp = two
                two += one
                one = temp
                
                if(isSlow) {
                    usleep(700000)
                }
            }
            return text
        },
        {
            (iterationCount, isSlow) -> String in
            var sum = 0
            var text = ""
            for i in 1...iterationCount {
                sum += i
                text += "\(sum)\n"
                
                if(isSlow) {
                    usleep(700000)
                }
            }
            return text
        },
        {
            (iterationCount, isSlow) -> String in
            var adder = 1
            var value = 0
            var text = ""
            
            for _ in 1...iterationCount {
                value += adder
                adder += 2
                text += "\(value)\n"
                
                if(isSlow) {
                    usleep(700000)
                }
            }
            return text
        }]

    override func viewDidLoad() {
        sequence = algorithm[0]
        //iterationCount = 1
        //isSlow = false
    }
    
    @IBAction func switchSpeed(_ sender: UISwitch) {
        //isSlow = sender.isOn
    }
    
    @IBAction func changeSequence(_ sender: UISegmentedControl) {
        sequence = algorithm[sender.selectedSegmentIndex]
    }
    
    @IBAction func changeIterations(_ sender: UISlider) {
        //iterationCount = Int(sender.value)
    }
    
    @IBAction func go() {
        let count = Int(countSlider.value)
        let isSlow = isSlowSwitch.isOn
        output.text = sequence(count, isSlow)
    }
}

