import UIKit
class ViewController: UIViewController {
    static let TO_GREEN="toGreen";
    //event handler when we want to initiate segue
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if identifier == ViewController.TO_GREEN{
            print("check if should move to green");
        }
        return true;
    }
    
    //event handler before performing segue, comes after shouldPerformSegue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == ViewController.TO_GREEN{
            print("moving to green");
        }
    }
    
}
