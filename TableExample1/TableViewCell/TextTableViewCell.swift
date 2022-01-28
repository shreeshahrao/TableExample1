//
//  TextTableViewCell.swift
//  TableExample1
//
//  Created by ShreeshaRao on 27/01/22.
//

import UIKit

class TextTableViewCell: UITableViewCell {
    
    static let identifier = "TextTableViewCell"
    
    
    @IBOutlet weak var txtLabel: UILabel!
    
    @IBOutlet weak var imgLabel: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
