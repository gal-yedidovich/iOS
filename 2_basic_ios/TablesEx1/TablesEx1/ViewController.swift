import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    private var items: [[String: Any]]!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let path = Bundle.main.path(forResource: "items", ofType: "plist")!
        let arr = NSArray(contentsOfFile: path)
        items = arr as! [Dictionary]
        print(items)
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
        let index = indexPath.row
        cell.textLabel?.text = "\(items[index]["name"]!): \(items[index]["price"]!)"
        
        return cell
    }
}

