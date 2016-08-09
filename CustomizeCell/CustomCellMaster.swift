//
//  CustomCellMaster.swift
//  CustomizeCell
//
//  Created by Le Ha Thanh on 7/29/16.
//  Copyright © 2016 le ha thanh. All rights reserved.
//

import UIKit

class CustomCellMaster: UITableViewCell {

    @IBOutlet weak var labelNameFilm: UILabel!
    @IBOutlet weak var imgViewLogo: UIImageView!
    
    @IBOutlet weak var labelDirector: UILabel!
    
    @IBOutlet weak var imgViewStar: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
