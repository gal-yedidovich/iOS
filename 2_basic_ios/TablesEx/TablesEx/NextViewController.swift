import UIKit

class NextViewController: UIViewController {

    @IBOutlet var dataLbl: UILabel!
    
    private var text:String!
    private var inputs: [String]!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        /*/
        //Ex 1
        dataLbl.text = text
        // */
        //Bonus
        dataLbl.text = String(describing: inputs!)
        // */
    }
    
    public func pass(data: String) {
        self.text = data
    }
    
    public func pass(data: [String]) {
        self.inputs = data
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        dismiss(animated: true, completion: nil)
    }
}
