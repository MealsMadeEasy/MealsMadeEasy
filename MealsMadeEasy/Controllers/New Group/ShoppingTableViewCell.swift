//
//  ShoppingTableViewCell.swift
//  MealsMadeEasy
//
//  Created by Tai Tran on 3/23/18.
//  Copyright © 2018 Tai Tran. All rights reserved.
//

import UIKit
import M13Checkbox

class ShoppingTableViewCell: UITableViewCell {

    
    @IBOutlet weak var UICheckBox: UIView!
    @IBOutlet weak var ingredient: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        let checkbox = M13Checkbox(frame: CGRect(x: 0, y: 0, width: 29.0, height: 29.0))
        checkbox.stateChangeAnimation = .bounce(.fill)
        checkbox.tintColor = .orange
        checkbox.boxType = .square
        checkbox.isEnabled = true
        UICheckBox.addSubview(checkbox)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
