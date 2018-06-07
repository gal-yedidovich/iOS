import UIKit
class MagentaController : UIViewController{
    @IBAction func toBlue(_ btn:UIButton){
        navigationController!.popViewController(animated: true);
    }
    @IBAction func toRoot(_ btn:UIButton){
        navigationController!.popToRootViewController(animated: true);
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        dismiss(animated: true, completion: nil)
    }
}
