import UIKit
class BlueController : UIViewController{
    @IBAction func toMagenta(_ btn:UIButton){
        //push next screen
        let next = storyboard!.instantiateViewController(withIdentifier: "magenta");
        navigationController!.pushViewController(next, animated: true);
        //present(next, animated: true, completion: nil)
    }
    
    @IBAction func prev(_ btn:UIButton){
        //go back to previous screen
        navigationController!.popViewController(animated: true);
    }
}
