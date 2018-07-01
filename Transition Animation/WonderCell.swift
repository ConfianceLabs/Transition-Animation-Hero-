//
//  WonderCell.swift
//  Transition Animation
//
//  Created by apple on 30/04/18.
//  Copyright © 2018 apple. All rights reserved.
//

import UIKit

class WonderCell: UITableViewCell {

    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var wonderImage: UIImageView!
    @IBOutlet weak var wonderDesc: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.selectionStyle = .none
    
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
