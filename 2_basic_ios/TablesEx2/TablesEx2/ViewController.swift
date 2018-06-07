//
//  ViewController.swift
//  TablesEx2
//
//  Created by hackeru on 25 Heshvan 5778.
//  Copyright © 5778 hackeru. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    @IBOutlet var input: UITextField!
    @IBOutlet var tbl: UITableView!
    
    private let items = ["Gal", "Lera", "Nikita", "Marina"]
    private var filtered: [String]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        filtered = items
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func filter(_ sender: UITextField) {
        let txt = sender.text!
        
        if txt.isEmpty {
            //show all items
            filtered = items
        } else {
            //filter method accepts another method as parameter (that accepts string and returns bool)
            filtered = items.filter(check) //{ item in return item.contains(txt) })
        }
        
        tbl.reloadData()
    }
    
    //method to check if parameter contains current text in text field
    func check(item: String) -> Bool {
        return item.lowercased().contains(input.text!.lowercased())
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filtered.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
        cell.textLabel?.text = filtered[indexPath.row]
        
        return cell
    }
}

