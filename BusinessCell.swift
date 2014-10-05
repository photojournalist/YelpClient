//
//  BusinessCell.swift
//  YelpClient
//
//  Created by Salim Madjd on 10/4/14.
//  Copyright (c) 2014 Salim Madjd. All rights reserved.
//

import UIKit

class BusinessCell: UITableViewCell {

	@IBOutlet weak var businessName: UILabel!

	@IBOutlet weak var reviewCount: UILabel!

	@IBOutlet weak var address: UILabel!


	@IBOutlet weak var foodType: UILabel!


	@IBOutlet weak var businessImage: UIImageView!

	
	@IBOutlet weak var ratingImage: UIImageView!

	

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
