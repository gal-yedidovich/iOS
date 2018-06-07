import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    //click on item in tableivew to show on next view controller
    //bonus selecting multiple items, andd passing them all, deselected items wont pass
    
    private var items: [String] = ["Gal","Lera","Nikita","Marina","Mom","Dad","Nir"]
    
    //Bonus
    private var selectedItems:[String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func goNext() {
        let next = storyboard!.instantiateViewController(withIdentifier: "next") as! NextViewController
        
        next.pass(data: selectedItems)
        show(next, sender: self)
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = items[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //go to next view controller
        
        //Ex 1
        if !tableView.allowsMultipleSelection {
        let next = storyboard!.instantiateViewController(withIdentifier: "next") as! NextViewController
        
        let data = items[indexPath.row]
        next.pass(data: data)
        
        show(next, sender: self)
        } else { //Bonus
            selectedItems.append(items[indexPath.row])
        }
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        //Bonus
        if tableView.allowsMultipleSelection {
            let index = selectedItems.index(of: items[indexPath.row])!
            selectedItems.remove(at: index)
        }
    }
}

