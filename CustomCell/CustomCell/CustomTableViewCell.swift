//
//  CustomTableViewCell.swift
//  CustomCell
//
//  Created by minjun.ha on 09/02/2019.
//  Copyright © 2019 minjun.ha. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var amountLabel: UILabel!
    @IBOutlet weak var valueLabel: UILabel!
    @IBOutlet weak var cellImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        cellImage.contentMode = UIView.ContentMode.scaleAspectFill
        cellImage.layer.cornerRadius = 50.0
        cellImage.layer.masksToBounds = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}
