//
//  demoTableViewCell.swift
//  demoTableview
//
//  Created by Harshal Jadhav on 03/05/17.
//  Copyright © 2017 Harshal Jadhav. All rights reserved.
//

import UIKit

class demoTableViewCell: UITableViewCell {
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var heightConstraint: NSLayoutConstraint!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
