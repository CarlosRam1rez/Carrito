//
//  CeldaTableViewCell.swift
//  TebleView
//
//  Created by CarlosRamírezGómez on 3/8/19.
//  Copyright © 2019 CarlosRamírezGómez. All rights reserved.
//

import UIKit

class CeldaTableViewCell: UITableViewCell {

    
    @IBOutlet weak var lblText: UILabel!
    @IBOutlet weak var lblPrice: UILabel!
    @IBOutlet weak var imageViewProduct: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: false)

        // Configure the view for the selected state
    }
    
    
    

}
