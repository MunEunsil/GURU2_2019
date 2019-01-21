//
//  ListTableViewCell.swift
//  StoryBoard
//
//  Created by swuad_05 on 2019. 1. 17..
//  Copyright © 2019년 swuad_14. All rights reserved.
//

import UIKit

class ListTableViewCell: UITableViewCell {

    
    @IBOutlet var textLable: UILabel!
    @IBOutlet var dateLable: UILabel!
    @IBOutlet var nameLable: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
