//
//  MealTableViewCell.swift
//  MealsMadeEasy
//
//  Created by Tai Tran on 2/15/18.
//  Copyright © 2018 Tai Tran. All rights reserved.
//

import UIKit

class MealTableViewCell: UITableViewCell {

    @IBOutlet weak var month: UILabel!
    @IBOutlet weak var date: UILabel!
    @IBOutlet weak var mealone: UIImageView!
    @IBOutlet weak var mealOneLabel: UILabel!
    @IBOutlet weak var lunchLabel: UILabel!
    @IBOutlet weak var dinnerLabel: UILabel!
    @IBOutlet weak var lunchMeal: UIImageView!
    @IBOutlet weak var dinnerMeal: UIImageView!
    @IBOutlet weak var mealtwo: UIImageView!
    @IBOutlet weak var mealTwoLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
