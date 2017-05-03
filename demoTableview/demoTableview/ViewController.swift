//
//  ViewController.swift
//  demoTableview
//
//  Created by Harshal Jadhav on 03/05/17.
//  Copyright © 2017 Harshal Jadhav. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource{
    @IBOutlet weak var demoTableView: UITableView!
    var isPromotionApplied = false
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func applyCode(_ sender: Any) {
        demoTableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
   
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = demoTableView.dequeueReusableCell(withIdentifier: "demoTableViewCell", for: indexPath) as! demoTableViewCell
        if isPromotionApplied{
            cell.heightConstraint.constant = 0.0
            isPromotionApplied = false
        }else{
            cell.heightConstraint.constant = 21.0
            isPromotionApplied = true
        }
        return cell
    }


}

