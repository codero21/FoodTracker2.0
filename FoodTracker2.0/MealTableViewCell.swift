//
//  MealTableViewCell.swift
//  FoodTracker2.0
//
//  Created by Rollin Francois on 8/25/16.
//  Copyright © 2016 Rollin Francois. All rights reserved.
//

import UIKit

class MealTableViewCell: UITableViewCell {
    
        // MARK: Properties
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var ratingControl: RatingControl!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
