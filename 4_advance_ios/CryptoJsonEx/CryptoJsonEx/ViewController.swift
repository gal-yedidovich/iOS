import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var tbl:UITableView!
    private var data: [[String: Any]] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        loadData()
    }
    
    
    func loadData(){
        let req = URLRequest(url: URL(string: "https://api.coinmarketcap.com/v1/ticker/?limit=10")!)
//        req.httpMethod = "GET"
//        req.allHTTPHeaderFields=["Accept":"text/json"]
        URLSession.shared.dataTask(with: req, completionHandler: {(d, r, e) in
            if e != nil { return } //check for error
            
            let status = (r as? HTTPURLResponse)?.statusCode;
            if status == 200 {
                self.data = (try? JSONSerialization.jsonObject(with: d!, options: .mutableContainers) as! [[String : Any]]) ?? [] //save data or empty if error
                DispatchQueue.main.async { self.tbl.reloadData() } //refresh on main
            }
        }).resume();
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let row = data[indexPath.row]
        let cell = UITableViewCell()
        
        cell.textLabel?.text = "\(row["name"]!) \(row["price_usd"]!)"
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
}





