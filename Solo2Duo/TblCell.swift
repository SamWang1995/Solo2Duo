//
//  TblCell.swift
//  Solo2Duo
//
//  Created by Betty Jing on 1/3/16.
//  Copyright © 2016 Samuel Wang. All rights reserved.
//

import UIKit

class TblCell: UITableViewCell {

    @IBOutlet var labelName: UILabel!
    @IBOutlet var labelMessage: UILabel!
    @IBOutlet var labelDate: UILabel!
    @IBOutlet var labelTime: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
