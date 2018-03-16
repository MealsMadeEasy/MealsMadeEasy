//
//  SuggestionTableViewCell.swift
//  MealsMadeEasy
//
//  Created by Tai Tran on 3/9/18.
//  Copyright © 2018 Tai Tran. All rights reserved.
//

import UIKit

class SuggestionTableViewCell: UITableViewCell {
    @IBOutlet weak var MealImage: UIImageView!
    @IBOutlet weak var MealTitle: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
